// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ethereum_endpoints_response.dart';
import 'geth_details_response.dart';

/// Ethereum-specific blockchain node details.
class EthereumDetailsResponse {
  /// Ethereum-specific endpoint information.
  final pulumi.Input<EthereumEndpointsResponse> additionalEndpoints;
  /// Immutable. Enables JSON-RPC access to functions in the `admin` namespace. Defaults to `false`.
  final pulumi.Input<bool> apiEnableAdmin;
  /// Immutable. Enables JSON-RPC access to functions in the `debug` namespace. Defaults to `false`.
  final pulumi.Input<bool> apiEnableDebug;
  /// An Ethereum address which the beacon client will send fee rewards to if no recipient is configured in the validator client. See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or https://docs.prylabs.network/docs/execution-node/fee-recipient for examples of how this is used. Note that while this is often described as "suggested", as we run the execution node we can trust the execution node, and therefore this is considered enforced.
  final pulumi.Input<String> beaconFeeRecipient;
  /// Immutable. The consensus client.
  final pulumi.Input<String> consensusClient;
  /// Immutable. The execution client
  final pulumi.Input<String> executionClient;
  /// Details for the Geth execution client.
  final pulumi.Input<GethDetailsResponse> gethDetails;
  /// Immutable. The Ethereum environment being accessed.
  final pulumi.Input<String> network;
  /// Immutable. The type of Ethereum node.
  final pulumi.Input<String> nodeType;

  /// Creates a new [EthereumDetailsResponse].
  /// [additionalEndpoints] Ethereum-specific endpoint information.
  /// [apiEnableAdmin] Immutable. Enables JSON-RPC access to functions in the `admin` namespace. Defaults to `false`.
  /// [apiEnableDebug] Immutable. Enables JSON-RPC access to functions in the `debug` namespace. Defaults to `false`.
  /// [beaconFeeRecipient] An Ethereum address which the beacon client will send fee rewards to if no recipient is configured in the validator client. See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or https://docs.prylabs.network/docs/execution-node/fee-recipient for examples of how this is used. Note that while this is often described as "suggested", as we run the execution node we can trust the execution node, and therefore this is considered enforced.
  /// [consensusClient] Immutable. The consensus client.
  /// [executionClient] Immutable. The execution client
  /// [gethDetails] Details for the Geth execution client.
  /// [network] Immutable. The Ethereum environment being accessed.
  /// [nodeType] Immutable. The type of Ethereum node.
  const EthereumDetailsResponse({
    required this.additionalEndpoints,
    required this.apiEnableAdmin,
    required this.apiEnableDebug,
    required this.beaconFeeRecipient,
    required this.consensusClient,
    required this.executionClient,
    required this.gethDetails,
    required this.network,
    required this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEndpoints': pulumi.Input.mapInputValue<EthereumEndpointsResponse, Map<String, dynamic>>(additionalEndpoints, (value) => value.toMap()),
      'apiEnableAdmin': apiEnableAdmin,
      'apiEnableDebug': apiEnableDebug,
      'beaconFeeRecipient': beaconFeeRecipient,
      'consensusClient': consensusClient,
      'executionClient': executionClient,
      'gethDetails': pulumi.Input.mapInputValue<GethDetailsResponse, Map<String, dynamic>>(gethDetails, (value) => value.toMap()),
      'network': network,
      'nodeType': nodeType,
    };
  }

  factory EthereumDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EthereumDetailsResponse(
      additionalEndpoints: pulumi.Input.fromValue(EthereumEndpointsResponse.fromMap((map['additionalEndpoints']! as Map).cast<String, dynamic>())),
      apiEnableAdmin: pulumi.Input.fromValue(map['apiEnableAdmin'] as bool),
      apiEnableDebug: pulumi.Input.fromValue(map['apiEnableDebug'] as bool),
      beaconFeeRecipient: pulumi.Input.fromValue(map['beaconFeeRecipient'] as String),
      consensusClient: pulumi.Input.fromValue(map['consensusClient'] as String),
      executionClient: pulumi.Input.fromValue(map['executionClient'] as String),
      gethDetails: pulumi.Input.fromValue(GethDetailsResponse.fromMap((map['gethDetails']! as Map).cast<String, dynamic>())),
      network: pulumi.Input.fromValue(map['network'] as String),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
    );
  }
}

