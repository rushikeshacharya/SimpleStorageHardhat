// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
library MathUtils {
    function add(uint a, uint b) public pure returns(uint) {
        return a + b;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./MathUtils.sol";
contract Calculator  {
    using MathUtils for uint;
    function getSum(uint firstNumber, uint secondNumber) public pure returns(uint) {
        return MathUtils.add(firstNumber, secondNumber);
    }

    function getAddition(uint firstNumber, uint secondNumber) public pure returns(uint){
        return firstNumber.add(secondNumber);
    }
}