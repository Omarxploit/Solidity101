//SPDX-License-Identifier: Mit
pragma solidity >=0.7.0 < 0.9.0;

contract DataType{
    //boolean or ture||false
    bool public boolean = true;
    
    /*
    Unit is stand for unsigned integer,meaning non negative integers
    different in size
    uint8 range form 0 to 2 ** 8 - 1
    uint16 range from 0 to 2 ** 16 - 1
    uint256 range from 0 to 2 ** 256 - 1
    */
    uint256 Un258 = 234; 
    uint16 Un16 = 11; 
    uint8 Un8 = 1;

    /**
    int256 range from -2 ** 255 to 2 ** 255 -1
    int128 range from -2 ** 127 to 2 ** 127 -2
    **/
    int128 In128 = -1;
    int256 In256 = -135;

    //min and max
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x032301188be8F4542FC27BD51f504d55a8f80C66;
    /**
    byte represent 0 sequence of a bytes
    there are fixed-sized byte arrays and a dynomically-sized byte arrays                                AAZ    Q1      aaaaaaaaaaaaaaaaaaa
    **/
    //dynamic byte array are byte[]
    bytes1 a = 0xb5; //  [10110101]
    bytes1 b = 0x56; //  [01010110]

    //default value with unassigned var 
     bool public defaultBoolean; // false//false
    uint256 public defuint; //0
    int256  public defint; //0
    address public deffaddr;//0x000000000000000000000000
}
