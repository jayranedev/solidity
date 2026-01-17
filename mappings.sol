// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract testMapping {

    // =========================
    // STRUCT DEFINITION
    // =========================
    // Struct groups multiple related values into one data type
    struct person {
        uint favoraitNumber;
        // Unsigned integer to store a favorite number

        string name;
        // Dynamic UTF-8 string
        // Stored in storage → gas expensive
    }

    // =========================
    // ARRAY (FOR LISTING)
    // =========================
    // Dynamic array used for:
    // 1. Storing ordered data
    // 2. Iteration (looping)
    // 3. Getting total count (people.length)
    person[] public people;

    // =========================
    // MAPPING (FOR FAST LOOKUP)
    // =========================
    // Mapping used for:
    // 1. O(1) lookup time
    // 2. Direct access without looping
    // 3. Key-value relationship
    //
    // IMPORTANT:
    // - Mappings CANNOT be iterated
    // - Mappings do NOT store keys
    // - No length property exists
    mapping(string => uint256) public peoples;

    // =========================
    // FUNCTION: setPeople
    // =========================
    function setPeople(
        string memory _name,
        // Function parameter stored in memory (temporary)

        uint256 _favNumber
        // Unsigned integer input
    ) public {

        // -------------------------
        // ARRAY USAGE
        // -------------------------
        // Used for listing / iteration
        // Data is stored in order
        people.push(person(_favNumber, _name));

        // -------------------------
        // MAPPING USAGE
        // -------------------------
        // Used for fast lookup
        // No looping required
        peoples[_name] = _favNumber;
    }

    // =================================================
    // IMPORTANT INTERVIEW CONCEPT
    // =================================================
    // people   → used for LISTING / ITERATION
    // peoples  → used for FAST LOOKUP
    //
    // This is a VERY COMMON Solidity pattern because:
    // - Arrays can be iterated but are slow to search
    // - Mappings are fast to search but cannot be iterated

    // =================================================
    // HIDDEN SOLIDITY TRUTH (GAS OPTIMIZATION)
    // =================================================
    // mapping(string => uint256):
    // - String keys are hashed internally using keccak256
    // - More gas expensive
    //
    // BETTER (production-level):
    // mapping(bytes32 => uint256)
    //
    // Example:
    // bytes32 key = keccak256(abi.encodePacked(name));

    // =================================================
    // PRODUCTION-LEVEL DESIGN PATTERN
    // =================================================
    // person[] public people;
    // mapping(string => uint256) public peoples;
    //
    // Standard Web3 pattern:
    // - Array → store and iterate data
    // - Mapping → retrieve data efficiently

    // =================================================
    // WHY MAPPINGS HAVE NO LENGTH
    // =================================================
    // - Keys are not stored
    // - Only values exist at hashed slots
    // - Blockchain cannot track how many keys exist
    // - Therefore: no .length and no iteration

    // =================================================
    // MEMORY vs STORAGE (RECAP)
    // =================================================
    // memory  → temporary, cheaper, deleted after function call
    // storage → permanent, expensive, stored on blockchain

    // =================================================
    // FRONTEND NOTE (ethers.js / web3.js)
    // =================================================
    // - Use array to fetch all people (loop in frontend)
    // - Use mapping to fetch specific person instantly
}
