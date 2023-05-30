// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

// Solidity program to demonstrate Logical Operators
contract LogicalOperator {
    function Logic(bool a, bool b) public pure returns (bool, bool, bool) {
        // Logical AND operator
        bool and = a && b;

        // Logical OR operator
        bool or = a || b;

        // Logical NOT operator
        bool not = !a;
        return (and, or, not);
    }
}
