// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

/*
    Create a function that:
    updates a value at a given index
*/

contract arrIdUp{
    uint[] public array;

    function setArr(uint x) public{
        array.push(x);
    }

    function setIdUpdate(uint id, uint x) public{
        array[id] = x;
    }

    function retArr() public view returns(uint[] memory){
        return array;
    }
}