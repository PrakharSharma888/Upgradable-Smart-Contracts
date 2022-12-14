//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import './UNFT3.sol';

contract UNFT2 is UNFT {

    function test() pure public returns(string memory){
        return "Upgraded";
    }
}