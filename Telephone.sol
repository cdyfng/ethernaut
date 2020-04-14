pragma solidity ^0.4.18;

// 0x687479cce299dd2ec3ea9a9392f366e846254913
contract Telephone {

  address public owner;

  function Telephone() public {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}