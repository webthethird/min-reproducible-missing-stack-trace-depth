// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./A.sol";

contract B {
    A public a;

    constructor(A _a) {
        a = _a;
    }

    function callRevertIfEven(uint256 number) public view returns (uint256) {
        return a.revertIfEven(number);
    }
}
