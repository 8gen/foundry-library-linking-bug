// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {CounterBad} from "../src/Counter.sol";

contract CounterTest is Test {
    CounterBad counter;

    function setUp() public {
        counter = new CounterBad();
    }

    function testIncrement() public {
        counter.increment();
    }

    function testSetNumber(uint256 x) public {
        counter.setNumber(x);
    }
}
