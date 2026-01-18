// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

/*
    Create a dynamic uint[] array.
    Functions:
    add a number
    get number by index
 */

contract uintArr{
    uint[] public array;

    function setValue(uint x) public {
        array.push(x);
    }

    function getIdValue(uint x) public view returns(uint){
        return array[x];
    }
}