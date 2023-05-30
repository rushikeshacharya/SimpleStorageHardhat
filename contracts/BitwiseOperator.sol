// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

// Solidity program to demonstrate Bitwise Operator
contract BitwiseOperator {

	// Declaring variables
	uint16 public a = 4;
	uint16 public b = 1;

	// Initializing a variable to '&' value
	uint16 public and = a & b;

	// Initializing a variable to '|' value
	uint16 public or = a | b;

	// Initializing a variable to '^' value
	uint16 public xor = a ^ b;

	// Initializing a variable to '<<' value
	uint16 public leftshift = a << b;

	// Initializing a variable to '>>' value
	uint16 public rightshift = a >> b;

	// Initializing a variable to '~' value
	uint16 public not = ~a ;
}
