
//You have to use require(), assert() and revert() methods

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract CompanyManagement
{
    
    uint public performancePts = 700;
    uint public salary = 1000;
    uint public bonus = 500;
    uint public totalLeaves = 30;
    uint public companyPerformacePts = 10;

    //Cannot get bonus if performance not meeting the criteria
    function getBonus(uint criteria) public   {
        require(performancePts < criteria, "You do not meet the criteria to get bonus!");
        salary += bonus;
        companyPerformacePts+=1;
    }

    //Cannot take leaves if the required no. of days is greater than quota
    function getLeave(uint leaveDays) public   {
        totalLeaves -= leaveDays;
        if (totalLeaves < 0) {
            revert("You are exceeding the leave quota!");
        }
        companyPerformacePts-=1;
    }

    //Checks if the companyPerformance is equals to zero
    function companyPerformance() public view returns (string memory){
        assert(companyPerformacePts == 0);
        return "Company Performace shouldn't be zero!!";
    }

}

