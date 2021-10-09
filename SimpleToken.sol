//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

//https://docs.openzeppelin.com/contracts/2.x/api/token/erc20#ERC20Detailed-decimals--
//https://eips.ethereum.org/EIPS/eip-20

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SimpleToken is ERC20 {

    uint256 public initialSupply = 1000000*10**8;
    
    constructor() ERC20("Simple Token", "SPN") {
        _mint(msg.sender, initialSupply);
    }
}
