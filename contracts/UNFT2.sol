//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import './UNFT.sol';

contract UNFT2 is UNFT {

    function test() view public returns(string memory){
        return "Upgraded";
    }

    // Note : Openzeppelin deploys and connects a Proxy Contract automatically when we use there library to deploy the Implementation Contract
}