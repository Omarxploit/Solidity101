// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;


//custom defined types that can group several variables
struct Owner{
    address addr;
    uint256 amount;
}

contract Funding{
    //struct can be defined inside a contracts and is visible to only three drived contracts
    struct Campaign{
        address payable beneficiary;
        uint256 fundGoal;
        uint256 numFunders;
        uint256 amount;
        mapping (uint256 => Owner) owners;
    }
    uint256 numCampaign;
    mapping(uint256 => Campaign) campaigns;

    function newCampaign(address payable beneficiary, uint256 goal) public returns(uint256 campaignID){
        campaignID = numCampaign++; // ID return a variable
        Campaign storage c = campaigns[campaignID]; //holds data between function calls
        c.beneficiary = beneficiary;
        c.fundGoal = goal;
    }
    function contribute(uint256 campaignID) public payable{
        //create a new tempray memory struct, and copie it over to storage
        //why we never use memory instead of storage?
        Campaign storage /*try switching storage and check the error*/ c = campaigns[campaignID];
        c.owners[c.numFunders++] = Owner({addr: msg.sender, amount:msg.value});
        c.amount += msg.value;
    }
    function checkGoalReach(uint256 campaignID) public returns (bool reached){
        Campaign storage c = campaigns[campaignID];
        if(c.amount < c.fundGoal)
            return false;
        uint256 amount = c.amount;
        c.amount = 0;
        c.beneficiary.transfer(amount);
        return true;
    }
}
//Memory -> in Solidity is a temporary place to store data whereas 
//Storage  -> holds data between function calls
//provides a way to define new types in the form of structs