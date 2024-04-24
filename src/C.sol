// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./B.sol";

contract C {
    B public b;

    constructor(B _b) {
        b = _b;
    }

    function isEven(uint256 number) public view returns (bool) {
        try b.callRevertIfEven(number) {
            return false;
        } catch Error(string memory) {
            return true;
        }
    }
}
