
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    // public variables here
        string public Tokenname = "Meta";
        string public Tokenabb = "MTA";
        uint total = 0;
    // mapping variable here

        mapping (address => uint) public balances;
    // mint function
        function min(address _address, uint _value) public {
            total  += _value;
            balances[_address] += _value;
        }
    // burn function
        function burn(address _address, uint _value) public{
            if(balances[_address] >= _value){
                total -= _value;
                balances[_address] -= _value;
            }
        }
}
