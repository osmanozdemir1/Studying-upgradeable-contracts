// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

//proxy address: 0xe93902f916B046aC99921361272436E381087B09
//implementation address: 0x2CC92d4349D197f9C3A41F7D693A4ceba5B66673

contract VendingMachineV1 is Initializable {
  uint public numSodas;
  address public owner;

  function initialize(uint _numSodas) public initializer {
    numSodas = _numSodas;
    owner = msg.sender;
  }

  function purchaseSoda() public payable {
    require(msg.value >= 1000 wei, "You must pay 1000 wei for a soda!");
    numSodas--;
  }
}