// SPDX-License-Identifier: MIT
// Declares the open-source license of the contract
pragma solidity ^0.8.4;
// Compiler version: use Solidity 0.8.4 or higher

contract arr {

    // Struct is a custom data type
    // It groups multiple variables into one
    struct Person {
        uint favoriteNumber; 
        // Unsigned integer, stores a positive number

        string name;
        // Dynamic UTF-8 string, stored in storage (gas expensive)
    }

    // Counter to track how many elements are filled
    // Needed for fixed-size array because it doesn't auto-track length
    uint personcount = 0;

    // Dynamic array of Person structs
    // Can grow dynamically using push()
    // Stored in storage (permanent blockchain data)
    Person[] public poeple;

    // Fixed-size array of length 2
    // Size is known at compile time
    // Cannot grow or shrink
    Person[2] public person;

    // Function to add a person to the FIXED-SIZE array
    function addPerson(
        string memory _name, 
        // Function argument stored in memory (temporary)

        uint256 _favoraitNumber
        // Unsigned integer input
    ) public {

        // Ensures array does not overflow
        // If condition fails, transaction is reverted
        require(personcount < 2, "Person array is full");

        // Creates a Person struct in memory
        // Then stores it in the storage array at index personcount
        person[personcount] = Person(_favoraitNumber, _name);

        // Increment the counter to point to next index
        personcount = personcount + 1;
    }

    // Function to add a person to the DYNAMIC array
    function addPeople(
        string memory _name,
        // Stored in memory (temporary)

        uint256 _favoraitNumber
        // Unsigned integer input
    ) public {

        // push() automatically:
        // 1. Expands the array
        // 2. Stores the struct in storage
        // 3. Updates array length
        poeple.push(Person(_favoraitNumber, _name));
    }

    // =========================
    // MEMORY vs STORAGE SUMMARY
    // =========================
    // memory  → temporary, cheaper, deleted after function call
    // storage → permanent, expensive, stored on blockchain
}
