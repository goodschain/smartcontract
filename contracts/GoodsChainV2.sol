pragma solidity 0.5.0;

import "./GoodsChain.sol";

contract GoodsChainV2 is GoodsChain {
    function getAuthor() public view returns (address) {
        return chainManager;
    }
}
