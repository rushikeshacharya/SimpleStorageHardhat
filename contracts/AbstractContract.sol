// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

abstract contract Person {
    string name;
    function setName(string memory _name) public {
        name = _name;
    }
    function getName() public view returns (string memory _name){
        _name = name;
    }
    function gender() public virtual returns (string memory);
}

contract Employee is Person {
    function gender() public override pure returns (string memory) { return "female"; }
}