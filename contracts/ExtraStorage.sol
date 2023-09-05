//SPDX-License-Identifier : MIT
// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

import "./SimpleStorage.sol";
contract ExtraStorage is SimpleStorage{
    //We want to used the Store function in SimpleStorage.sol
    //Add virtual to the store function and
    // override to the store function in EtraStorage.sol
    function store(uint256 _favoriteNumber) public override{
        favouriteNumber =_favoriteNumber + 5;
    }
}