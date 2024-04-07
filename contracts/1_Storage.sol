// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.25;

contract Storage {

   uint number;

    // takes a value _number and assigns it to the state variable number
    function setNumber(uint _number) public {
          number = _number;
    }

    // returns the value of the state variable number
    function getNumber() public view returns (uint) {
        return number;
    }
 }
