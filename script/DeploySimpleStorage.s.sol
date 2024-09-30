// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;
// //import console from forge-std
import "forge-std/console.sol";

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // //get address from private key and console it
        console.log("DeploySimpleStorage:run", address(this));
        vm.startBroadcast(
            0x6b1195e58aa55fba78d757449f0901912d4bcc3afab8711884487d3ef4c0cf24
        );
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
