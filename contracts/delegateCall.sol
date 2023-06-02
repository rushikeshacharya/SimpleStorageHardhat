// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract B {

    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}

// deploy contract B first
contract A {
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _contractBsAddress, uint _num) public payable {
        //TODO: delegatecall
          (bool success, bytes memory data) = _contractBsAddress.call(
            abi.encodeWithSignature("setVars(uint256)", _num)
        );
    }
}
