// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract simpleStorage {
    uint public storedData;
    
    function setdata(uint _storedData) public{
        storedData = _storedData;
    }
}