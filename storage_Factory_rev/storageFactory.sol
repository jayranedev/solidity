// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

import "./simpleStorage.sol";

contract storageFactory{
    simpleStorage[] public ssArray;

    function mintSS() public{
        simpleStorage simple = new simpleStorage();
        ssArray.push(simple);
    }

    function addData(uint id, uint data) public{
        simpleStorage simple = simpleStorage(address (ssArray[id]));
        simple.setdata(data);
    }

    function getData(uint id) public view returns(uint){
        simpleStorage s =simpleStorage(address(ssArray[id]));
        return s.storedData();
    }
}