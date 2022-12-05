//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Events{
    event Ledger(address indexed pubKey, string message);
    event AultLedger();

    function setMessage(address _key, string memory _message) public{
        emit Ledger(_key,_message);
        emit AultLedger();
    }
}