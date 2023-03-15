// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0 <0.9.0;

import {Lib} from "./library/Lib.sol";

abstract contract Counter {
    uint256 public number;

    constructor() {
    }

    function increment() public {
        number++;
    }

}

contract CounterOk is Counter {
    function setNumber(uint256 newNumber) public {
        number = newNumber + Lib.X;
    }
}

contract CounterBad is Counter {
    function setNumber(uint256 newNumber) public {
        number = newNumber + Lib.x();
    }
}
