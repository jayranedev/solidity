//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

//Create a contract that stores: Data

contract StoreData {
    uint number;
    string name;

    function setValues(uint _number, string memory _name) public{
        name = _name;
        number = _number;
    }

    function getValues() public view returns(uint, string memory){
        return(number, name);
    } 
}