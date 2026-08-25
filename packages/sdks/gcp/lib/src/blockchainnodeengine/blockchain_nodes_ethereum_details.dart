// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blockchain_nodes_ethereum_details_additional_endpoint.dart';
import 'blockchain_nodes_ethereum_details_geth_details.dart';
import 'blockchain_nodes_ethereum_details_validator_config.dart';

class BlockchainNodesEthereumDetails {
  /// (Output)
  /// User-provided key-value pairs
  /// Structure is documented below.
  final pulumi.Input<List<BlockchainNodesEthereumDetailsAdditionalEndpoint>?>? additionalEndpoints;
  /// Enables JSON-RPC access to functions in the admin namespace. Defaults to false.
  final pulumi.Input<bool?>? apiEnableAdmin;
  /// Enables JSON-RPC access to functions in the debug namespace. Defaults to false.
  final pulumi.Input<bool?>? apiEnableDebug;
  /// The consensus client
  /// Possible values are: `CONSENSUS_CLIENT_UNSPECIFIED`, `LIGHTHOUSE`.
  final pulumi.Input<String?>? consensusClient;
  /// The execution client
  /// Possible values are: `EXECUTION_CLIENT_UNSPECIFIED`, `GETH`, `ERIGON`.
  final pulumi.Input<String?>? executionClient;
  /// User-provided key-value pairs
  /// Structure is documented below.
  final pulumi.Input<BlockchainNodesEthereumDetailsGethDetails?>? gethDetails;
  /// The Ethereum environment being accessed.
  /// Possible values are: `MAINNET`, `TESTNET_GOERLI_PRATER`, `TESTNET_SEPOLIA`.
  final pulumi.Input<String?>? network;
  /// The type of Ethereum node.
  /// Possible values are: `LIGHT`, `FULL`, `ARCHIVE`.
  final pulumi.Input<String?>? nodeType;
  /// Configuration for validator-related parameters on the beacon client, and for any managed validator client.
  /// Structure is documented below.
  final pulumi.Input<BlockchainNodesEthereumDetailsValidatorConfig?>? validatorConfig;

  /// Creates a new [BlockchainNodesEthereumDetails].
  /// [additionalEndpoints] (Output)
  /// [apiEnableAdmin] Enables JSON-RPC access to functions in the admin namespace. Defaults to false.
  /// [apiEnableDebug] Enables JSON-RPC access to functions in the debug namespace. Defaults to false.
  /// [consensusClient] The consensus client
  /// [executionClient] The execution client
  /// [gethDetails] User-provided key-value pairs
  /// [network] The Ethereum environment being accessed.
  /// [nodeType] The type of Ethereum node.
  /// [validatorConfig] Configuration for validator-related parameters on the beacon client, and for any managed validator client.
  const BlockchainNodesEthereumDetails({
    this.additionalEndpoints,
    this.apiEnableAdmin,
    this.apiEnableDebug,
    this.consensusClient,
    this.executionClient,
    this.gethDetails,
    this.network,
    this.nodeType,
    this.validatorConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEndpoints': ?pulumi.Input.mapOptionalInputValue<List<BlockchainNodesEthereumDetailsAdditionalEndpoint>, List<Map<String, dynamic>>>(additionalEndpoints, (value) => pulumi.Input.encodeList<BlockchainNodesEthereumDetailsAdditionalEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiEnableAdmin': ?apiEnableAdmin,
      'apiEnableDebug': ?apiEnableDebug,
      'consensusClient': ?consensusClient,
      'executionClient': ?executionClient,
      'gethDetails': ?pulumi.Input.mapOptionalInputValue<BlockchainNodesEthereumDetailsGethDetails, Map<String, dynamic>>(gethDetails, (value) => value.toMap()),
      'network': ?network,
      'nodeType': ?nodeType,
      'validatorConfig': ?pulumi.Input.mapOptionalInputValue<BlockchainNodesEthereumDetailsValidatorConfig, Map<String, dynamic>>(validatorConfig, (value) => value.toMap()),
    };
  }

  factory BlockchainNodesEthereumDetails.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesEthereumDetails(
      additionalEndpoints: (() { final guardedValue = map['additionalEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BlockchainNodesEthereumDetailsAdditionalEndpoint>(guardedValue, (value) => BlockchainNodesEthereumDetailsAdditionalEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiEnableAdmin: (() { final guardedValue = map['apiEnableAdmin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      apiEnableDebug: (() { final guardedValue = map['apiEnableDebug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      consensusClient: (() { final guardedValue = map['consensusClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionClient: (() { final guardedValue = map['executionClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gethDetails: (() { final guardedValue = map['gethDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlockchainNodesEthereumDetailsGethDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validatorConfig: (() { final guardedValue = map['validatorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlockchainNodesEthereumDetailsValidatorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
