# Goods Chain Smart Contract

## Configs
* Update your mnemonic and rinkeby URI

## Install dependencies
* npm install zos -g
* npm install

## Smart contract first time deploy
* zos add GoodsChain
* zos push --network rinkeby
* zos create GoodsChain init initializer --network rinkeby
* zos update GoodsChain --network rinkeby

## Upgrade smart contract
* zos bump 0.2.0
* zos add GoodsChainV2:GoodsChain
* zos push --network rinkeby
* zos update GoodsChain --network rinkeby