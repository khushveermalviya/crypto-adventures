// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.22 <0.9.0;

contract Faucet {
    // Storage variables
    uint public fund = 1000; // Because uint holds only positive values and int holds both negative and positive values 
    uint32 public test = 10300;

    // Event to emit when Ether is withdrawn
    event Withdrawal(address indexed to, uint amount);

    // Function to withdraw Ether from the contract
    function withdraw(uint withdraw_amount) public {
        // Check that the contract has enough Ether to withdraw
        require(address(this).balance >= withdraw_amount, "Insufficient balance in faucet for withdrawal request");

        // Send the amount to the address that requested it
        payable(msg.sender).transfer(withdraw_amount);

        // Emit an event for the withdrawal
        emit Withdrawal(msg.sender, withdraw_amount);
    }
}