pragma solidity 0.5.0;

import "zos-lib/contracts/Initializable.sol";

contract GoodsChain is Initializable {
    // manager is who create smart contract
    address public chainManager;

    // Constructor
    function initialize() public initializer {
        chainManager = msg.sender;
    }

    struct DataPusher {
        uint256 batchId;
        uint256 stageId;
    }

    // bachid => stage => list of hash (hash is String)
    mapping(uint256 => mapping(uint256 => string[])) public ChainData;

    function addHash(uint256 batchId, uint256 stageId, string memory stageHash)
        public
    {
        ChainData[batchId][stageId].push(stageHash);
    }

    function getHash(uint256 batchId, uint256 stageId, uint256 index)
        public
        view
        returns (string memory tempHash)
    {
        tempHash = ChainData[batchId][stageId][index];
        return tempHash;
    }

    function verifyHash(
        uint256 batchId,
        uint256 stageId,
        string memory hashValue
    ) public view returns (bool) {
        for (uint256 i = 0; i < ChainData[batchId][stageId].length; i++) {
            if (
                keccak256(abi.encodePacked(ChainData[batchId][stageId][i])) ==
                keccak256(abi.encodePacked(hashValue))
            ) {
                return true;
            }
        }
        return false;
    }
}
