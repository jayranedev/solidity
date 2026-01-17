//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract simpleStorage{
    uint256 storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns(uint){
        return storedData;
    }
}