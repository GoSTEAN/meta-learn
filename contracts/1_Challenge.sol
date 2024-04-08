// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;


contract Challenge_1 {
    uint num;
    string name;
    bool isFalse;
    int negNum;

    function setNegNum(int _negNum) public {
        negNum = _negNum;
    }

    function getNegNum() public view returns (int) {
        return negNum;
    }

    function setNum(uint _num) public {
        num = _num;
    }

    function getNum() public view returns (uint) {
        return num;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns (string memory) {
        return  name;
    }

    function setBool(bool _isFalse) public {
        isFalse = _isFalse;
    }
    function getBool() public view returns (bool){
        return isFalse;
    }
    
}
