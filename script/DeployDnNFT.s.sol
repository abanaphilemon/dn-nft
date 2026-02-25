//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/DnNFT.sol";

contract DeployDnNFT is Script {
    function run() external{
        vm.startBroadcast();
        new DnNFT("ipfs://bafybeickyancghvqqraggy65dofsp75z6vsaart4qwg4ju6twf5gzic7vq/1.json");
        vm.stopBroadcast();
    }
}