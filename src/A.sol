// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract A {
    function revertIfEven(uint256 number) public pure returns (uint256) {
        if (number % 2 == 0) {
            revert("Number is even");
        }
        return number;
    }
}
