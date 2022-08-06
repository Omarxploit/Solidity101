//SPDX-License-Identifier: Mit
pragma solidity >=0.7.0 < 0.9.0;

contract storeCounter{
    uint256 public count;

    //function that get the current count
    function getCount() public view returns(uint256){
        return count;
    }
    //function that increment the count
    function inc_Count() public{
        count++;
    }
    //function that decrement the count
    function dec_Count() public{
        count--;
    }
}