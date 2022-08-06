//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 < 0.9.0;


//not working just and example
contract  Client{
    event Deposit(
        address indexed from,
        bytes32 indexed id,
        uint256 value
    );

    function deposit(bytes32 id) public payable{
        //event or emitted using by emit
        //follow by the name of the event and the arguments
        //filtering by javascript api for the deposit
        emit Deposit(msg.sender, id, msg.value);
    }
}


/*
//Events are convenience interfaces with the EVM logging facilities.
//They are give an abstraction on top of the EVM’s logging functionality. 
//Applications can subscribe and listen to these events through the RPC interface of an Ethereum client
//https://docs.soliditylang.org/en/v0.8.15/contracts.html#events
//The Log and its event data is not accessible from within contracts (not even from the contract that created them)
//Since the transaction log only stores the event data and not the type, you have to know the type of the event, 
//including which parameter is indexed and if the event is anonymous in order to correctly interpret the data. In particular, 
//it is possible to “fake” the signature of another event using an anonymous event.
*/

/**
Memeber of Events
//event.selector: For non-anonymous events, this is a bytes32 value containing 
//the keccak256 hash of the event signature, as used in the default topic.
**/