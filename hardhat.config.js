require("@nomicfoundation/hardhat-toolbox");
// require("@nomiclabs/hardhat-ganache");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks: {
    ganache: {
      url: "http:127.0.0.1:8545",
    },
    hardhatNode: {
      url: "http:127.0.0.1:8545"
    },
    sepolia: {
      url: "https://sepolia.infura.io/v3/<key>"
      // accounts: [privateKey1, privateKey2, ...];
    }
  },
};
