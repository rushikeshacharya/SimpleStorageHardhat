// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Modifiers {
    address admin;
    struct employee {
        uint256 emp_id;
        string emp_name;
        uint256 age;
    }
    employee public e;

    constructor() public {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(admin == msg.sender, "caller is not admin");
        _;
    }

    function enterDetails(uint256 _empid, string memory _empname, uint256 _empage) public onlyAdmin {
        e.emp_id = _empid;
        e.emp_name = _empname;
        e.age = _empage;
    }

    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeAdmin(address _newAdmin) public onlyAdmin validAddress(_newAdmin) {
        admin = _newAdmin;
    }
}
