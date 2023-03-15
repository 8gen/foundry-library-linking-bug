// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/Test.sol";
import "../src/Counter.sol";


contract GetCode is Script {
    function run() view external {
        console.logBytes(abi.encodePacked(vm.getCode("Counter.sol:CounterOk")));
        console.logBytes(abi.encodePacked(vm.getCode("Counter.sol:CounterBad")));
    }
}
