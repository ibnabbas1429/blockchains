//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{
    // This gets initialized to zero!
    // <- This means that this section is a comment!
    uint256 favouriteNumber;
    mapping (string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    function store(uint256 _favoriteNumber) public virtual {
        favouriteNumber = _favoriteNumber;

    }

    function retrieve() public view returns(uint256){
        return  favouriteNumber;

    }
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }


}