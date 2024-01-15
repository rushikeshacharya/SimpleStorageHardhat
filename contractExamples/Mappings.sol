// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapping {
    struct User {
        string name;
        uint phoneNo;
    }
    // Mapping from address to uint
    mapping(string => User) public userDetails;

    function get(string memory _email) public view returns (User memory) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return userDetails[_email];
    }

    function set(string memory _email, string memory _name, uint _phoneNo) public {
        // Update the value at this address
        userDetails[_email].name = _name;
        userDetails[_email].phoneNo = _phoneNo;
    }

    function remove(string memory _eamil) public {
        // Reset the value to the default value.
        delete userDetails[_eamil];
    }
}

contract NestedMapping {
        struct User {
        string name;
        uint phoneNo;
    }
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(string => User)) public userDetails;

   
    function get(string memory _email) public view returns (User memory) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return userDetails[msg.sender][_email];
    }

    function set(string memory _email, string memory _name, uint _phoneNo) public {
        // Update the value at this address
        userDetails[msg.sender][_email].name = _name;
        userDetails[msg.sender][_email].phoneNo = _phoneNo;
    }

    function remove(string memory _email) public {
        delete userDetails[msg.sender][_email];
    }
}