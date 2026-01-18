// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

/* 
Create two arrays: one stored in storage
one created in memory (inside a function)
Return the memory array.
*/
contract LastArrayQ {
    // This is the storage array. Data persists across transactions.
    uint[] public storageArray; 

    // This function creates an array in memory and returns it.
    // Data is temporary and only exists for the duration of the function call.
    function createMemoryArray() public pure returns (uint[] memory) {
        // 'memory' keyword specifies where the data is stored.
        // 'new uint[](3)' allocates space for 3 elements.
        uint[] memory memArray = new uint[](3); 

        memArray[0] = 10;
        memArray[1] = 20;
        memArray[2] = 30;

        return memArray;
    }
}
