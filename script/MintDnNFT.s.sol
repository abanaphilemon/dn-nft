//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/DnNFT.sol";

contract MintDnNFT is Script {
    function run() external {
        vm.startBroadcast();
        DnNFT nft = DnNFT(0x86f0D4eaF1DE6AA41008eF37D6f61395421803cE);
        nft.mint(0x3a495835124A089eE4B42a3Ac8eef28f368785C5);
        vm.stopBroadcast();
    }
}