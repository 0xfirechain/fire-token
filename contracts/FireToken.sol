pragma solidity 0.5.2;

import './token/TokenPausable.sol';
import './token/TokenDetailed.sol';

contract FireToken is TokenPausable, TokenDetailed {
    constructor (string memory name, string memory symbol, uint8 decimals, uint256 totalSupply)
    public
    TokenDetailed (name, symbol, decimals) {
        _mint(msg.sender, totalSupply);
    }
}