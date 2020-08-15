# DappShop

Lets build a crypto kitties like dapp clone with truffle

<img src="https://www.trufflesuite.com/img/tutorials/pet-shop/dapp.png" alt="Dapp Pet Shop">

## Prep - truffle box:
https://www.trufflesuite.com/boxes/pet-shop

## Set up full Dapp:
https://www.trufflesuite.com/tutorials/pet-shop

## Genral trufle commands
  Compile:        truffle compile
  Migrate:        truffle migrate
  Test contracts: truffle test
  Run dev server: npm run dev

///////////////////////////////////////////////////////////////////////////////

// Get startet
mkdir PetShop
cd Petshop
truffle unbox pet-shop
truffle develop
truffle(devleop)> compile
truffle(devleop)> migrate

//new bash dir:PetShop
npm run dev
// => runs react app in localhost
//Local: http://localhost:3000

// check verisons installed
truffle version
//Truffle v5.1.39 (core: 5.1.39)
Solidity v0.5.16 (solc-js)
Node v10.16.3
Web3.js v1.2.1

// pragma version error, change to 0.5.16 according to error message

//Adoption.sol
pragma solidity 0.5.16;

// Variable setup
contract Adoption {
    address[16] public adopters;

   // Function 1: Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;
        return petId;
    }

   // F2: Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
    
}

//

// We are already running a private Ethereum blockchain, through Truffle Develop check Port in truffle-config.js 8545. Dont need Ganache.

// Migrate contract to the running blockchain
truffle migrate

// Write the first test

// Testing the adopt() function
function testUserCanAdoptPet() public {
  uint returnedId = adoption.adopt(expectedPetId);

  Assert.equal(returnedId, expectedPetId, "Adoption of the expected pet should match what is returned.");
}

// testing
truffle test
// this should deliver compiling *.sol files
// and TestAdoption "3 passing"

// ...follow further truffle tutotial steps...

