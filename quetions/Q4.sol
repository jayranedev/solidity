//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/*
Store an address variable.
Write a function that:
saves the caller’s address
another function to return it
*/

contract addressVar{
    address caller;

    function saveCaller() public{
        caller = msg.sender;
    }

    function retCaller() public view returns(address){
        return caller;
    } 
}