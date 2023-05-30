//SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
 
contract Booleans {
 
  bool isVotingOpen;
 
   function setVotingState(bool _state) public {
      isVotingOpen = _state;
   }
 
   function returnVotingState() public view returns(bool){
       return isVotingOpen;
   }
}