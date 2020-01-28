'use strict';

var HDWalletProvider = require("truffle-hdwallet-provider");

var mnemonic = "";
var rinkeby = "";

module.exports = {
  networks: {
    rinkeby: {
      provider: function () {
        return new HDWalletProvider(mnemonic, rinkeby)
      },
      gas: 5000000,
      gasPrice: 5e9,
      network_id: 1
    }
  }
};