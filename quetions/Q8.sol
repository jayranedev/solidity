// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

/*
    Write a function that:
    returns the last element of the array
*/

contract arrLast{
    uint[] public array;
    
    function setArr(uint x) public{
        array.push(x);
    }

    function getLast() public view returns(uint){
        return array[array.length-1];
    }
}