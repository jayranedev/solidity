// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Contract demonstrating normal, view, and pure functions
contract sStorage {

    // State variable stored permanently on the blockchain
    uint256 storedData;

    // -------------------------
    // NORMAL FUNCTION
    // -------------------------
    // Writes data to blockchain storage
    // Costs gas when executed in a transaction
    function set(uint256 x) public {
        storedData = x;
    }

    // -------------------------
    // VIEW FUNCTION
    // -------------------------
    // Reads blockchain state but does not modify it
    // Can access state variables
    // Free when called off-chain
    function sum(uint y) public view returns (uint256) {
        return storedData + y;
    }

    // -------------------------
    // PURE FUNCTION
    // -------------------------
    // Does not read or write blockchain state
    // Uses only function parameters and local variables
    // Fully deterministic and cheapest type of function
    function add(uint a, uint b) public pure returns (uint256) {
        return a + b;
    }
}
