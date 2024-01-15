//SPDX-License-Identifier: Unlicense
pragma solidity >=0.7.0 <0.9.0;

contract StorageLocation {
    Person[] public persons;

    struct Person {
        string name;
        uint256 age;
        address personAddress;
    }

    constructor() {
        Person memory newperson = Person({
            name: "Ram",
            age: 29,
            personAddress: msg.sender
        });

        Person memory personTwo = Person({
            name: "Raj",
            age: 24,
            personAddress: msg.sender
        });
        persons.push(newperson);
        persons.push(personTwo);
    }

    function loadPerson() public view returns (Person[] memory) {
        return persons;
    }

    function changeDataone() public view {
        Person memory person = persons[0];
        person.age = 56;
    }

    function changeDataTwo() public {
        Person storage person = persons[0];
        person.age = 76;
    }

    function callLoadData(uint256[] calldata p) public returns (uint256) {
        //   p[0]=5;
        return p[0];
    }
}
