// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SelfDestruct {
    function getBalance() public view returns (uint){
       return address(this).balance;
    }
	receive() external payable {}
	function deleteContract() public payable {
		selfdestruct(payable(msg.sender));
	}
	  function sendViaTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }
}
