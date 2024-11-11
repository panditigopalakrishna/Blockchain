// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Smaerwallet{
    uint public  balance;
    function Deposit() public payable {
        balance+=msg.value;
    }
    function getbalance() public view returns(uint){
        return address(this).balance;

    }
    function withdraw()public {
        address payable to=payable(msg.sender);
        to.transfer(getbalance());
        
    }
    function withdrawtoaccount(address payable to) public{
        to.transfer(getbalance());
    }
}