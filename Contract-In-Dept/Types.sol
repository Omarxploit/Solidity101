// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

//create a contract
contract Types{
    //initializing Bool variable
    bool public boolean = true; //|| false;

    //initializing Integer variable
    int32 public int_var = -60432;

    //initializing String var
    string public str = "Solidity";

    //initializing Byte var
    bytes public b = "a"; //return in byte not a number

    //Defining an enumerator
    enum my_enum {sol_, idi_, ty_}

    //Defining a Function to return an a value stored in and enum
    function Enum() public pure returns(my_enum){
        return my_enum.sol_;
    }
}

/**
boolean = ture||false
interger = store interger values 
int and unit =  or use as sigined or unsigned
address = hold 20-byte with represent the size of an ethereum address
bytes and strings = byte or store as a fixed-sized char and string are use to set equak to or more than byte
the lenght of a byte is 1 to 32
enums =  use to create a user-defined data type and use to assign a name to an tnegral constan with make it readable...
**/