// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

contract simpleStorage {
    uint public storedData;

    function setData(uint _storedData) public{
        storedData = _storedData;
    }
}