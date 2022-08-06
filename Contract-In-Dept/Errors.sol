// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;


//Errors allow you to define descriptive names and data for failure situations
contract structs{
    address owner;
    error unauthorized();
    function buy(uint256 amount) public payable{
        require( //either creates an error without any data or an error of type Error(string)
            amount <= msg.value / 2 ether,
            "Not enough Ether provided"
        );
    }
    //perfrom the purchase
    function withdraw() public{
        if(msg.sender != owner)
            revert unauthorized(); // takes a custom error as direct argument without parentheses

        payable(msg.sender).transfer(address(this).balance);
    }
}
//https://docs.soliditylang.org/en/v0.8.15/contracts.html#errors