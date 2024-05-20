const Faucet = artifacts.require("Faucet");

module.exports = function(deployer) {
  console.log("Starting deployment...");
  deployer.deploy(Faucet).then(() => {
    console.log("Faucet deployed successfully");
  }).catch(error => {
    console.error("Deployment failed:", error);
  });
};
