// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

contract retArr{
    uint[] public array;

    function setArr(uint x) public {
        array.push(x);
    }

    function getArr() public view returns(uint[] memory){
        return array;
    }
}