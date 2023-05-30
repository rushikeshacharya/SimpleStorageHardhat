// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Base contract
contract Vehicle {
    uint public topSpeed;

    constructor(uint _topSpeed) public {
        topSpeed = _topSpeed;
    }

    function blowHorn() public pure returns (string memory) {
        return "Press button to blow horn.....";
    }

    //add virtual in order to override in child class
    function shiftGear() public pure virtual returns (string memory) {
        return "Shift gear to drive";
    }
}

// Derived contract
contract Car is Vehicle {
    string public model;

    constructor(
        string memory _model,
        uint _topSpeed
    ) public Vehicle(_topSpeed) {
        model = _model;
    }

    //add virtual in order to override in child class
    function shiftGear() public pure virtual override returns (string memory) {
        blowHorn();
        return "Car is driving on 5th Gear";
    }
}

// Derived contract
contract SportsCar is Car {
    uint public airbags;

    constructor(
        string memory _model,
        uint _topSpeed,
        uint _airbags
    ) public Car(_model, _topSpeed) {
        airbags = _airbags;
    }

    function shiftGear() public pure override returns (string memory) {
        blowHorn();
        return "SportsCar is driving at top speed on 6th Gear";
    }
}
