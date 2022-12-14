//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract UNFT is Initializable, ERC721Upgradeable, UUPSUpgradeable, OwnableUpgradeable {
    function initialize() public initializer{

        __ERC721_init("Upgradeable NFT","UNFT");
        _mint(msg.sender, 1);
        __Ownable_init();
        
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {
    }
}