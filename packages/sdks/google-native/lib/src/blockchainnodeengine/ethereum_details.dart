// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ethereum_details_consensus_client.dart';
import 'ethereum_details_execution_client.dart';
import 'ethereum_details_network.dart';
import 'ethereum_details_node_type.dart';
import 'geth_details.dart';

/// Ethereum-specific blockchain node details.
class EthereumDetails {
  /// Immutable. Enables JSON-RPC access to functions in the `admin` namespace. Defaults to `false`.
  final pulumi.Input<bool>? apiEnableAdmin;
  /// Immutable. Enables JSON-RPC access to functions in the `debug` namespace. Defaults to `false`.
  final pulumi.Input<bool>? apiEnableDebug;
  /// An Ethereum address which the beacon client will send fee rewards to if no recipient is configured in the validator client. See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or https://docs.prylabs.network/docs/execution-node/fee-recipient for examples of how this is used. Note that while this is often described as "suggested", as we run the execution node we can trust the execution node, and therefore this is considered enforced.
  final pulumi.Input<String>? beaconFeeRecipient;
  /// Immutable. The consensus client.
  final pulumi.Input<EthereumDetailsConsensusClient>? consensusClient;
  /// Immutable. The execution client
  final pulumi.Input<EthereumDetailsExecutionClient>? executionClient;
  /// Details for the Geth execution client.
  final pulumi.Input<GethDetails>? gethDetails;
  /// Immutable. The Ethereum environment being accessed.
  final pulumi.Input<EthereumDetailsNetwork>? network;
  /// Immutable. The type of Ethereum node.
  final pulumi.Input<EthereumDetailsNodeType>? nodeType;

  /// Creates a new [EthereumDetails].
  /// [apiEnableAdmin] Immutable. Enables JSON-RPC access to functions in the `admin` namespace. Defaults to `false`.
  /// [apiEnableDebug] Immutable. Enables JSON-RPC access to functions in the `debug` namespace. Defaults to `false`.
  /// [beaconFeeRecipient] An Ethereum address which the beacon client will send fee rewards to if no recipient is configured in the validator client. See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or https://docs.prylabs.network/docs/execution-node/fee-recipient for examples of how this is used. Note that while this is often described as "suggested", as we run the execution node we can trust the execution node, and therefore this is considered enforced.
  /// [consensusClient] Immutable. The consensus client.
  /// [executionClient] Immutable. The execution client
  /// [gethDetails] Details for the Geth execution client.
  /// [network] Immutable. The Ethereum environment being accessed.
  /// [nodeType] Immutable. The type of Ethereum node.
  const EthereumDetails({
    this.apiEnableAdmin,
    this.apiEnableDebug,
    this.beaconFeeRecipient,
    this.consensusClient,
    this.executionClient,
    this.gethDetails,
    this.network,
    this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEnableAdmin': ?apiEnableAdmin,
      'apiEnableDebug': ?apiEnableDebug,
      'beaconFeeRecipient': ?beaconFeeRecipient,
      'consensusClient': ?pulumi.Input.mapOptionalInputValue<EthereumDetailsConsensusClient, String>(consensusClient, (value) => value.wireValue),
      'executionClient': ?pulumi.Input.mapOptionalInputValue<EthereumDetailsExecutionClient, String>(executionClient, (value) => value.wireValue),
      'gethDetails': ?pulumi.Input.mapOptionalInputValue<GethDetails, Map<String, dynamic>>(gethDetails, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<EthereumDetailsNetwork, String>(network, (value) => value.wireValue),
      'nodeType': ?pulumi.Input.mapOptionalInputValue<EthereumDetailsNodeType, String>(nodeType, (value) => value.wireValue),
    };
  }

  factory EthereumDetails.fromMap(Map<String, dynamic> map) {
    return EthereumDetails(
      apiEnableAdmin: (() { final guardedValue = map['apiEnableAdmin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      apiEnableDebug: (() { final guardedValue = map['apiEnableDebug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      beaconFeeRecipient: (() { final guardedValue = map['beaconFeeRecipient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consensusClient: (() { final guardedValue = map['consensusClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EthereumDetailsConsensusClient.fromValue(guardedValue as String)); })(),
      executionClient: (() { final guardedValue = map['executionClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EthereumDetailsExecutionClient.fromValue(guardedValue as String)); })(),
      gethDetails: (() { final guardedValue = map['gethDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GethDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EthereumDetailsNetwork.fromValue(guardedValue as String)); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EthereumDetailsNodeType.fromValue(guardedValue as String)); })(),
    );
  }
}
