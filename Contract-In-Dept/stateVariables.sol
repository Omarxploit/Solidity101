//SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0 <0.9.0;

contract stateVariables{
    uint256 public data;  //State variables are variables whose values are permanently stored in contract storage.
    //Getter Functions -> https://docs.soliditylang.org/en/v0.8.15/contracts.html#getter-functions
    function x() public returns(uint256){
        data = 4; //internal access
        return this.data();  //external access
        //this global variable in Solidity refers to the current smart contract and the returned value can be typed to an address
    }
}


