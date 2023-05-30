//SPDX-License-Identifier: Unlicense
pragma solidity >=0.7.0 <0.9.0;

contract Constructor {
    uint public price;
    address public owner;

    constructor(uint _price) {
        price = _price;
        owner = msg.sender;
    }

    function changePrice(uint _price) public {
        require(msg.sender == owner);
        price = _price;
    }

    function getPrice() public view returns (uint) {
        return price;
    }
}
