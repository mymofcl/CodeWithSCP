//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract UnderstandingTxUnits{
    //Smallest uint : wei
    uint public oneWei = 1 wei;
    //verify
    bool public isOneWei = (1 wei == 1);

    //Mediocre uint : Gwei
    uint public oneGWei = 1 gwei;
    //verify
    bool public isOneGWei = (1 gwei == 1);

    //Largrst uint : ether
    uint public oneEther = 1 ether;
    //verify
    bool public isOneEther = (1 ether == 1e18);
    
    

}