//SPDX-License-Identifier: MIT

pragma solidity >=0.7.1 <0.9.0;

contract Functions{
    function feed() public payable returns (uint256){
        return 42;
    }
    //Internal Function call -> called directly (“internally”)
    function g(uint256 a) public pure returns (uint256 ret){
        return a + f();
    }
    function f() internal pure returns(uint256 ret){
        return g(7) + f();
    }

}

contract Consumer{
    //external function call ->  an external call, all function arguments have to be copied to memory.
    Functions _feed;
    function setFeed(Functions addr) public{ _feed = addr;}
    function callFeed() public {_feed.feed{value: 10, gas:800}();}
}

//helper function defined outside of a contract
function helper(uint256 x) pure returns(uint256){
    return x*2;
}

/**Note
A function call from one contract to another does not create its own transaction, it is a message call as part of the overall transaction.
https://docs.soliditylang.org/en/v0.8.15/control-structures.html#function-calls

**/
