pragma solidity >=0.5.16 <0.7.0;

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




