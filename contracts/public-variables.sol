 // SPDX-License-Identifier: MIT
 pragma solidity 0.8.7;

 contract Variables {
 
    uint num;
    uint internal num1;
    uint private num2;
    uint public num3;

    function setNumber(uint _num) public {
        num = _num;
        num1=4;
        num2=9;
        num3=7;
    }
    function getNumber() public view returns(uint, uint, uint) {
        return (num, num1, num2);
    }
 }

 contract InternalVariables is Variables {
     function getVariables() public view returns(uint, uint, uint){
        //  return (num, num1, num2, num3);
         return (num, num1, num3);
     }
 }