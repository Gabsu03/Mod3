/*
1.Only contract owner should be able to mint tokens
2.Any user can transfer tokens
3.Any user can burn tokens
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";

contract Eyron is ERC20, Ownable {
    constructor(address initialOwner) 
        ERC20("Eyron", "ERN") 
        Ownable(initialOwner){}
    

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }
}