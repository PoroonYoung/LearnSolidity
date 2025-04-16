// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnumLearn {
    enum gender {male, female}

    function getKidGender(gender _gender) public pure returns (string memory) {
        return _gender == gender.male ? "boy" : "girl";
    }
}

