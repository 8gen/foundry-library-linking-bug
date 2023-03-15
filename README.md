
# Library usage test run error

## Case 1: Getting constant (OK)


```solidity
..
import {Lib} from "./library/Lib.sol";
..
number = newNumber + Lib.X;
..
```

```bash
[⠢] Compiling...
[⠔] Compiling 4 files with 0.8.17
[⠒] Solc 0.8.17 finished in 1.14s
Compiler run successful

Running 2 tests for test/Counter.t.sol:CounterTest
[PASS] testIncrement() (gas: 32322)
[PASS] testSetNumber(uint256) (runs: 256, μ: 35267, ~: 35267)
Test result: ok. 2 passed; 0 failed; finished in 26.20ms
```

## Case 2: Calling function (BAD)


```solidity
..
import {Lib} from "./library/Lib.sol";
..
number = newNumber + Lib.x();
..
```

```bash
$ forge test

[⠆] Compiling...
No files changed, compilation skipped
2023-03-15T12:59:19.471056Z ERROR forge::runner: setUp failed reason="failed to read from \"../out/Counter/Counter.json\": No such file or directory (os error 2)" contract=0x7fa9385be102ac3eac297483dd6233d62b3e1496

Running 1 test for test/Counter.t.sol:CounterTest
[FAIL. Reason: Setup failed: failed to read from "../out/Counter/Counter.json": No such file or directory (os error 2)] setUp() (gas: 0)
Test result: FAILED. 0 passed; 1 failed; finished in 965.23µs

Failing tests:
Encountered 1 failing test in test/Counter.t.sol:CounterTest
[FAIL. Reason: Setup failed: failed to read from "../out/Counter/Counter.json": No such file or directory (os error 2)] setUp() (gas: 0)

Encountered a total of 1 failing tests, 0 tests succeeded
```
