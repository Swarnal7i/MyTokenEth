// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // initialize public variables tName,tAbbreviation,totalSupply here
    string public tName = "Block Dot";
    string public tAbbreviation = "BLKDOT";
    uint public totalSupply = 0;

    // mapping address to balance here
    mapping(address => uint) public balance;

    // mint function takes parameters address and  a value
    function mint (address _sender, uint _amount)public{
        balance[_sender] += _amount;
        totalSupply += _amount;
}
    // burn function has a if conditon where it burns the token balance and amount when the condition is fulfilled
    function burn (address _receiver, uint _amount)public {
        if (balance[_receiver] >= _amount){
            balance[_receiver] -= _amount;
            totalSupply -= _amount;
        }
        }
}
