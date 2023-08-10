///SPDX-License-Identifier: MIT
pragma solidity 0.8.21;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title AIPEPE: An erc20 token 
contract AIPEPE is ERC20, Ownable {
    ///@notice max supply 
    uint256 constant private MAX_SUPPLY = 6_900_000_000 * 1e18; //6.9 BILLION Tokens
    ///@dev create AIPEPE token contract, uses openezeppelin ERC20 and ownable.
    /// mint the max Supply to the owner wallet during deployment.
    constructor () ERC20 ("AIPEPE", "AIPEPE"){
        _mint(msg.sender, MAX_SUPPLY);
    }
}
