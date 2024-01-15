 // SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

// Solidity program to demonstrate Relational Operator

// Creating a contract
contract RelationalOperators {

	// Declaring variables
	uint16 public a = 20;
	uint16 public b = 10;

	// Initializing a variable
	// with bool equal result
	bool public eq = a == b;

	// Initializing a variable
	// with bool not equal result
	bool public noteq = a != b;
	
	// Initializing a variable
	// with bool greater than result
	bool public gtr = a > b;

	// Initializing a variable
	// with bool less than result
	bool public les = a < b;

	// Initializing a variable
	// with bool greater than equal to result
	bool public gtreq = a >= b;

	// Initializing a variable
	// bool less than equal to result
	bool public leseq = a <= b;
	
}
