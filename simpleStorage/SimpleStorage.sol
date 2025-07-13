//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    uint256  myFavouriteNumber;
    // uint256[] listOfFavouriteNumbers;

    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    // Person public pat = Person(7, "Pat");
    Person[] public  listOfPeople;
    mapping(string => uint256) public nameToNumber;

    function store(uint256 _favouriteNumber) public {
        myFavouriteNumber = _favouriteNumber;
    }
    function retrieve() public view returns(uint256){
        return myFavouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public{
    Person memory newPerson = Person(_favouriteNumber, _name);
    listOfPeople.push(newPerson);
    nameToNumber[_name] = _favouriteNumber;
    }

    //0xd9145CCE52D386f254917e481eB44e9943F39138
}