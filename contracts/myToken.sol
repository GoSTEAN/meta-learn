// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract MyToken {
    string public name;        // Token Name
    string public symbol;      // Token Abbreviation
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = _totalSupply;
    }

    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balanceOf[_address] += _value;
    }

    function burn(address _address, uint256 _value) public {
        if (balanceOf[_address] >= _value) {
            balanceOf[_address] -= _value;
            totalSupply -= _value;
        }
    }
}


// contract MyToken {

//     // public variables here
//     string public tokenName = "META";
//     string public tokenAbbrv = "MTA";
//     uint public totalSupply = 0;


//     // mapping variable here
//     mapping(address => uint) public balances;

//     // mint function
   
//     function mint(address _address, uint _value) public {
//         totalSupply += _value;
//         balances[_address] += _value;
//     }
//     // burn function

//     function burn(address _address, uint _value) public {
//         if (balances[_address] >= _value) {
//             totalSupply -= _value;
//             balances[_address] -= _value;
//         }
//     }
//}