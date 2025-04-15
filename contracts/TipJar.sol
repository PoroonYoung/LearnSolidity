// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract TipJar{
    address public owener;

    constructor () {
        owener = msg.sender;
    }

    modifier onlyOwener(){
                require(msg.sender==owener,"you are not owener");
_;
    }

    function tip() public payable{
        require(msg.value>0,"you shoud send a tip to use this function");
    }

    function withdraw() public onlyOwener{
        uint256 contractBalance = address(this).balance;
        require(contractBalance>0,"there are no tips to withdraw");

        payable (owener).transfer(contractBalance);
    }

    function getBalance() public view returns (uint256){

        return address(this).balance;
    }

}