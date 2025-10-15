// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "lib/forge-std/src/Script.sol";
import {DisasterReliefFund} from "../src/DisasterReliefFund.sol";

contract DeployDisasterReliefFund is Script {
    function run() public {
        // 获取部署者私钥 - 从环境变量读取
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        // 开始广播交易
        vm.startBroadcast(deployerPrivateKey);

        // 部署合约
        DisasterReliefFund disasterReliefFund = new DisasterReliefFund();

        // 停止广播
        vm.stopBroadcast();

        // 输出部署信息
        console.log("DisasterReliefFund deployed at:", address(disasterReliefFund));
 
    }
}
