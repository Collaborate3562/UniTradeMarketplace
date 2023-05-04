// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract TestNFT is ERC1155 {

    constructor() ERC1155("https://gateway.pinata.cloud/ipfs/QmULzok5qj3oJ7cx6CUK5k2duyFGFesELhKF9xN6shenex/") {
        _mint(msg.sender, 1, 5, "");
        _mint(msg.sender, 2, 5, "");
        _mint(msg.sender, 3, 5, "");
        _mint(msg.sender, 4, 5, "");
        _mint(msg.sender, 5, 5, "");
        _mint(msg.sender, 6, 5, "");
        _mint(msg.sender, 7, 5, "");
    }

    function uri(uint256 _tokenid) override public pure returns (string memory) {
        return string(
            abi.encodePacked(
                "https://gateway.pinata.cloud/ipfs/QmULzok5qj3oJ7cx6CUK5k2duyFGFesELhKF9xN6shenex/",
                Strings.toString(_tokenid),".json"
            )
        );
    }
}