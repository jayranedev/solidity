//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;
/*
Write a pure function that:
takes 3 numbers
returns their average 
*/

contract Average{
    function ave(uint a, uint b, uint c) public pure returns(uint){
        return (a+b+c)/3;
    }
}