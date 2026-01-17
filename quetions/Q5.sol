// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

/*
Write a view function that:
returns the square of a stored number
*/

contract Viii {
    uint public num;

    function setNum(uint _num) public{
        num = _num;
    }

    function getSqr() public view returns(uint){
        return num*num;
    }
}