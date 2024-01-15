// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UnlockContract {
  bool private locked;
  bytes32 password;

  constructor(bytes32 _password) {
    locked = true;
    password = _password;
  }

  function ifLocked() public view returns(bool){
    return locked;
  }

  function unlock(bytes32 _password) public {
    if ( password == _password) {
      locked = false;
    }
  }
}


//    res = await web3.eth.getStorageAt(this.lock.address,1)
// 0x464c415348000000000000000000000000000000000000000000000000000000