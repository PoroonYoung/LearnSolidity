// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Data{
    uint private  data = 255;

    function getData()public view returns (uint){
        return data;
    }

    receive() external payable { }
    
}