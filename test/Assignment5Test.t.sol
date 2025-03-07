// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {

    // 1. Define variables
    uint public counter;
    bool public isActive;

    // User structure to store user data
    struct User {
        uint id;
        string name;
        address addr;
    }

    // Array to store users
    User[] public users;

    // 2. Constructor to set initial values
    constructor() {
        counter = 0;
        isActive = true;
    }

    // 3. Function to increment the counter by 5
    function incrementCounter() public {
        counter += 5;
    }

    // 4. Function to toggle the isActive state
    function toggleActive() public {
        isActive = !isActive;
    }

    // 5. Function to add a new user
    function addUser(uint _id, string memory _name, address _addr) public {
        User memory newUser = User(_id, _name, _addr);
        users.push(newUser);
    }

    // Function to return the number of users
    function getUserCount() public view returns (uint) {
        return users.length;
    }
}
