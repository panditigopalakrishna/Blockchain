
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract SampleContarct{
    string public mystring="Hello world";
    address  sender=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    function updatstring(string memory _updatestring)public payable {
        if(msg.value==1 ether){
        mystring=_updatestring;
        }
        else{
            payable(sender).transfer(msg.value);
        }
    }
}