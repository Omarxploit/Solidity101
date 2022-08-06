//SPDX-License-Identifier: Mit
pragma solidity >=0.7.0 < 0.9.0;

contract immutables{
    /**
    immutable are like constants but the values they hold are set inside a constructor and cant be modified afterwards
    **/
    address public immutable addr;
    uint256 public immutable Unit;

    constructor(uint256 myUnit){
        addr = msg.sender;
        Unit = myUnit;
    }
}