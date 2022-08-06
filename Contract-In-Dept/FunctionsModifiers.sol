// SPDX-License-Identifier: MIT

pragma solidity >=0.7.1 <0.9.0;

contract FunctionsModifiers{
    constructor(){ // constructor is an optional function -> https://docs.soliditylang.org/en/v0.8.15/contracts.html?highlight=constructor#constructors 
        owner = payable(msg.sender);
    }
    address payable owner; //hold 20 byte value size of an address
    modifier onlyOwner(){
        require(
            msg.sender == owner, // the address of the person (or smart contract) who called the current function
            "Only owner can call this function"
        );
        _; //inserted the modifer code -> https://ethereum.stackexchange.com/questions/5861/are-underscores-in-modifiers-code-or-are-they-just-meant-to-look-cool
    }
}
//inheritance... combine of multiple contract into single one
contract destructible is FunctionsModifiers{
    //this contract inherits the onlyOwner and modifierfrom owned and aplliess it ot destroy if its call
    function destroy() public onlyOwner{
        selfdestruct(owner); //sends all remaining Ether stored in the contract to a designated address
    }
}
contract priced {
    //nodifers that receive arguments
    modifier costs(uint256 price){
        if(msg.value >= price){ //global variable contains the amount of ETH that was sent in the transaction
            _;
        } 
    }
}

contract Register is priced, destructible{
    mapping (address => bool) registerAddresses; //Mapping are  hash tables which consist of key types and corresponding value type pairs
    uint256 price; // is non-negative integers that store big number (decimals)

    constructor(uint256 initialPrice){
        price = initialPrice;
    }

    //provide a payable keyword so ether could be send
    function register() public payable costs(price){
        registerAddresses[msg.sender] = true;
    }
    function changePrices(uint256 _price) public onlyOwner{
        price = _price;
    }
}

//mutex is a locking mechanism used to synchronize access to a resource
contract Mutex{
    bool locked;
    modifier noReentrancy(){
        require(
            !locked,
            "Reentrant call"
        );
        locked = true;
        _; 
        locked = false;
    }
    /// This function is protected by a mutex, which means that
    /// reentrant calls from within `msg.sender.call` cannot call `f` again.
    /// The `return 7` statement assigns 7 to the return value but still
    /// executes the statement `locked = false` in the modifier.
    function f() public noReentrancy returns(uint256){
        (bool success,) = msg.sender.call("");
        require(success);
        return 7;
    }
}


//bool -> true||false
//Mapping information -> https://medium.com/upstate-interactive/mappings-in-solidity-explained-in-under-two-minutes-ecba88aff96e#:~:text=%20Mappings%20in%20Solidity%20Explained%20in%20Under%20Two,are%20virtually...%203%20Take%20aways.%20%20More%20 , https://www.tutorialspoint.com/solidity/solidity_mappings.htm , https://www.geeksforgeeks.org/solidity-mappings/

// function modifier can be overrider but no overloading for modifiers

// https://docs.soliditylang.org/en/latest/types.html