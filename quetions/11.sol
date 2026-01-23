// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

/*
    Create a struct:
        Person {
            string name;
            uint age;
        }
    Store one person and return it.
 */

contract ppeerr {
    struct Person{
        string name;
        uint age;
    }

    Person[] public people;

    function addPerson(string memory _name, uint _age) public{
        people.push(Person(_name, _age));
    }

    function readperson(uint x)public view returns(Person memory){
        return people[x];
    }
}