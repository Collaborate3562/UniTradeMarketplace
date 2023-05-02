require("@nomiclabs/hardhat-ethers");

const hre = require("hardhat");

async function main() {
  // Grab the contract factory 

  const UniTradeNFTMarketplace = await ethers.getContractFactory("UniTradeNFTMarketplace");
  const uniTrade = await UniTradeNFTMarketplace.deploy();
  await uniTrade.deployed();

  console.log("UniTradeNFTMarketplace deployed to address::", uniTrade.address);
}

main()
 .then(() => process.exit(0))
 .catch(error => {
   console.error(error);
   process.exit(1);
 });