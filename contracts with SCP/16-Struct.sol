//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract Struct{
    struct Book{
        string title;
        string author;
        uint price;
    }
    Book[] public books;
    mapping(string => Book[]) public ownedBooks;
    mapping(string => bool) internal isRegistered;

    function insertBooks(string memory _title, string memory _author, uint _price) public{
        books.push(Book(_title,_author,_price));
    }
    function assignReaders(string memory _name, uint _bookIndex) public{
        require(_bookIndex < books.length,"Book not Exist");
        if(!isRegistered[_name]){
            ownedBooks[_name].push(books[_bookIndex]);
            isRegistered[_name] = true;
        }
        else{
            require(ownedBooks[_name].length <= 2, "You are holding maximum number of books");
            ownedBooks[_name].push(books[_bookIndex]);
        }
    }

    function getBookList() public view returns(Book[] memory){
        return books;
    }
}