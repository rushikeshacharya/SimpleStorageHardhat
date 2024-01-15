// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Admin {
    address admin;

    constructor() public {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin);
        _;
    }
}

contract Cleark is Admin {
    struct StudentDetails {
        string name;
        string email;
        bool isActive;
    }

   mapping(string => StudentDetails) internal studentDetails;

    function addStudent(
        string calldata _name,
        string calldata _email,
        bool _isActive
    ) public onlyAdmin {
        studentDetails[_email].name = _name;
        studentDetails[_email].email = _email;
        studentDetails[_email].isActive = _isActive;
    }
}
