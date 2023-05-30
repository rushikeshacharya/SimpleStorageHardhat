// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract ConditionalOperator {
    function sub(uint a, uint b) public pure returns (uint) {
        uint result = (a > b ? a - b : b - a);
        return result;
    }
}
