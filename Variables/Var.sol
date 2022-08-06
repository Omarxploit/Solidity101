//SPDX-License-Identifier: Mit
pragma solidity >=0.7.0 < 0.9.0;

contract Variables{
    //states variables are declared outside of a function and store blockchain
    string public name = "john";
    uint256 public num = 234;

    function local() public pure{
        //local var is declared inside of a function and not stored any blockchain
        uint256 i = 456;
    }

    //global variables provided information about the blockchain
    uint256 timestamp = block.timestamp; // current block of uint256
    address sender = msg.sender; // address caller
}