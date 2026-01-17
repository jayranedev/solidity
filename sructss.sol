//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract structStore{
    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People public person = People({favoriteNumber: 2, name: "Jay"});
}