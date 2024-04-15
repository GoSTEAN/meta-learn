// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract Converter {
    // Event emitted when ether is received
    event EthReceived(address sender, uint amount);

    // Function to receive ether
    receive() external payable { 
        emit EthReceived(msg.sender, msg.value);
    }

    // Function to get the received ether in wei
    function getWei() public view returns (uint) {
        return address(this).balance;
    }

    // Function to get the received ether in ether
    function getEth() public view returns (uint) {
        return address(this).balance / 1 ether;
    }

    // Function to get the received ether in gwei
    function getGwei() public view returns (uint) {
        return  address(this).balance / 1 gwei;
    }
}