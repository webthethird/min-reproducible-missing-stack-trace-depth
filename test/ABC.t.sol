// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {A} from "../src/A.sol";
import {B} from "../src/B.sol";
import {C} from "../src/C.sol";

contract ABCTest is Test {
    A public a;
    B public b;
    C public c;

    function setUp() public {
        a = new A();
        b = new B(a);
        c = new C(b);
    }

    function test_StackTraceDepth() public {
        // Call C.isEven, which calls B.callRevertIfEven, which calls A.revertIfEven
        c.isEven(2);
        // Force test to fail so we can see the stack trace
        assertTrue(false);
    }
}
