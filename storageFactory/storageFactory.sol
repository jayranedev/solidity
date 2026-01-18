// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

import "./simapleStorage.sol";

contract storageFactory{
    simpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public{
        simpleStorage SimpleStorage = new simpleStorage();
        simpleStorageArray.push(SimpleStorage);
    }

    function sfStore(uint _simpleStorageIndex, uint _simpleStoragenumber) public {
        // not necessary to type cast to address, but recommended as best practice
        simpleStorage SimpleStorage = simpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        SimpleStorage.setData(_simpleStoragenumber);
    }

    function sfRetrive(uint _simpleStoregeIndex) public view returns(uint){
        simpleStorage SimpleStorage = simpleStorage(address(simpleStorageArray[_simpleStoregeIndex]));
        return SimpleStorage.storedData();
    }
}