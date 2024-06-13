# MyToken Smart Contract

This Solidity program is a simple token contract that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.

## Description

This program is a simple ERC20-like token contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract includes basic functionalities such as minting and burning tokens, and it stores token balances in a mapping. This program serves as a simple and straightforward introduction to Solidity programming and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix IDE](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```solidity
contract MyToken {

    // initialize public variables tName,tAbbreviation,totalSupply here
    string public tName = "Block Dot";
    string public tAbbreviation = "BLKDOT";
    uint public totalSupply = 0;

    // mapping address to balance here
    mapping(address => uint) public balance;

    // mint function takes parameters address and  a value such that the value of balnce and the total supply is updated everytime the amount is entered
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
```


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint and burn functions. For example, you can mint new tokens to an address by providing the address and the amount of tokens. Similarly, you can burn tokens by providing the address and the amount of tokens to be burned.

## Authors

Swarnali Das 


## License

This project is licensed under the MIT License
