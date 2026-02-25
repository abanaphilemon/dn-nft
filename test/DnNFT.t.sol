//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/DnNFT.sol";

contract DnNFTTest is Test {
    DnNFT nft;
    address user = address(1);

    function setUp() public {nft = new DnNFT("ipfs://test/");}

    function testMintNFT() public {nft.mint(user); assertEq(nft.ownerOf(1), user);}

    function testOnlyOnwerCanMint() public { vm.prank(user); vm.expectRevert(); nft.mint(user);}
}