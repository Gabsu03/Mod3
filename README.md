# Create and Mint Token

This contract is an ERC20 token with functionalities allowing minting, providing token to an address, burning tokens, and transferring tokens between addresses.

## Description

Allows minting, burning, and transferring tokens between addresses. 

## Features
* Minting: Controlled by the contract owner.
* Transferring: Available to all users.
* Burning: Available to all users.

## Requirements
* Solidity ^0.8.20
* OpenZeppelin Contracts ^5.0.0
  
### Usage
## Minting Tokens
Only contract owner should be able to mint tokens.
function mint(address to, uint256 amount) public onlyOwner
## Transfer Tokens
Any user can transfer tokens.
function transfer(address to, uint256 amount) public override returns (bool)
## Burn Token
Any user can burn tokens.
function burn(uint256 amount) public
## Authors

Aaron Gabrielle A. Galera
Email : 8214785@ntc.edu.ph

## License

This project is licensed under the MIT License