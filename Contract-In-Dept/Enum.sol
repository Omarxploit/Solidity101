// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Enum {
    /**nums require at least one member, 
    and its default value when declared is the first member. 
    Enums cannot have more than 256 members**/
    enum MoveMe {moveLeft, moveRight, moveBack, moveForward, stop} // Enum
    MoveMe walk;
    MoveMe constant numWalk = MoveMe.moveForward;
    function setmoveForward() public {
        walk = MoveMe.moveForward;
    }
    function getwalk() public view returns(MoveMe){
        return walk;
    }
    function getnumWalk() public pure returns(uint256){
        return uint256(numWalk);
    }
}
//Enums  can be used to create custom types with a finite set of ‘constant values’
//pure -> https://www.educative.io/answers/what-are-pure-functions-in-solidity
//view ->  read only functions and do not modify the state of the block chain
// compare both -> https://cryptomarketpool.com/pure-and-view-in-solidity-smart-contracts/

