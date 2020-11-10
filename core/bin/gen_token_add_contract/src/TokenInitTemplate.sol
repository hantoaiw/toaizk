// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.7.0;

contract TokenDeployInit {
    function getTokens() internal pure returns (address[] memory) {
        address[] memory tokens = new address[]({{ token_len }});
        {{~ #each tokens }}
        tokens[{{@index}}] = {{ this.address }};
        {{~ /each }}
        return tokens;
    }
}