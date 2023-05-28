const { assert, expect } = require("chai");
const { ethers } = require("hardhat");

describe("SimpleStorage", () => {
  before(async () => {
    SimpleStorage = await ethers.getContractFactory("SimpleStorage");
    simpleStorageInstance = await SimpleStorage.deploy();
    // console.log("simpleStorageInstance", simpleStorageInstance);
  });

  describe("Contract Deployment Check", () => {
    it("should check the deployed contract", async () => {
      SimpleStorage = await ethers.getContractFactory("SimpleStorage");
      simpleStorageInstance = await SimpleStorage.deploy();
      let txObj = await simpleStorageInstance.deployTransaction.wait();
      await expect(txObj.status).to.equal(1, "Conract deployment failed");
    });
  });
  describe("Simple Storage Test Suit", () => {
    it("should set a value", async () => {
      txReceipt = await simpleStorageInstance.set(9);
      res = await txReceipt.wait();
      assert.equal(await res.status, true, "Error");
    });
    it("should get a value ", async () => {
      const res = await simpleStorageInstance.get.call();
      assert.equal(res.toNumber(), 9, "Not equal");
    });
  });
});
