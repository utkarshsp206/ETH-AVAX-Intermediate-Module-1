# ETH_AVAX_PROOF-Intermediate_EVM_Course
**MODULE - 1**
**FINAL PROJECT**

In this final project, we have to use three error handling methods in Solidity:
1. require
2. assert
3. revert

**require():** Used for validating user inputs and conditions, provides a customizable error message, and returns remaining gas.<br>
**revert():** Used to explicitly revert a transaction, providing a customizable error message, and returns remaining gas.<br>
**assert():** Used to check for conditions that should never fail, consumes all remaining gas if the condition is false, and does not provide a customizable error message.

**CODE EXPLANATION:**

// SPDX-License-Identifier: MIT
This is a comment that indicates the license under which the code is released. In this case, it specifies the MIT License.

pragma solidity ^0.8.18;
This is a pragma directive that specifies the version of the Solidity compiler to be used. In this case, it indicates that the code should be compiled using Solidity version 0.8.18 or greater.

  contract CompanyManagement{...}
This line declares a new contract named CompanyManagement.
```
    uint public performancePts = 700;
    uint public salary = 1000;
    uint public bonus = 500;
    uint public totalLeaves = 30;
    uint public companyPerformacePts = 10;
```
  The above lines describe the public variables of type unsigned integer
```
   function getBonus(uint criteria) public   {
        require(performancePts < criteria, "You do not meet the criteria to get bonus!");
        salary += bonus;
        companyPerformacePts+=1;
    }
   ```

 The above function **getBonus** uses **require()** method to check whether the criteria for getting the bonus is met, if not then it display the message.


 ```
  function getLeave(uint leaveDays) public   {
        totalLeaves -= leaveDays;
        if (totalLeaves < 0) {
            revert("You are exceeding the leave quota!");
        }
        companyPerformacePts-=1;
    }
```

The above function **getLeave** uses **revert()** method to revert the transactions if the required number of leaves exceeds the sanctioned leaves.

```
     function companyPerformance() public view returns (string memory){
        assert(companyPerformacePts == 0);
        return "Company Performace shouldn't be zero!!";
    }

```

The above function **companyPerformance** uses **assert()** method to check that companyPerformance shouldn't be zero

<br>
<br>

**Thankyou!!**



