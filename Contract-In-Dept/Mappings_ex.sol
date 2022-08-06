// SPDX-License-Identifier: GPL-3.0

//Reference Types
pragma solidity >=0.7.0 <0.9.0;


//create a contract
contract Mappings_ex{
    //Defining an array
    uint256[5] public array = [uint256(1),2,3,4,5];

    //Defining a Structure
    struct eth_user{
        string name;
        string Nik;
        uint256 amount;
    }

    //create a structure object
    eth_user public user;
//not working
/**
    //Defining a function to return an structure element
    function structure() public view returns(string memory, string memory, uint256){
        user.name = "John";
        user.Nik = "joe";
        user.amount = 100**18;
        return (user.name, user.Nik, user.amount);   
    }
    //Creating a mapping
    mapping(address => eth_user) result;
    address[] eth_user_result;
**/
}