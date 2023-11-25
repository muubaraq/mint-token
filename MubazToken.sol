// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MubazToken is ERC20, Ownable {
    constructor() ERC20("Mubaz Token", "MBZ") Ownable(msg.sender) {}

    function mintTokens(address recipient, uint256 amount) external onlyOwner {
        _mint(recipient, amount);
    }

    function burnTokens(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function transferTokens(address recipient, uint256 amount) external  returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}