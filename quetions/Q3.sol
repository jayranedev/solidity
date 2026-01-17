//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
/*
Create a contract with:
one bool variable (default false)
a function that toggles it (true ↔ false)
 */

contract boolvar {
    bool public state;
    
    function toggleBool() public{
        state = !state;
    }
}