// ignore_for_file: unused_element, unnecessary_cast

import 'connection_info_response.dart';
import 'ethereum_details_response.dart';

/// Result data returned by getBlockchainNode.
class GetBlockchainNodeResult {
  /// Immutable. The blockchain type of the node.
  final String? blockchainType;
  /// The connection information used to interact with a blockchain node.
  final ConnectionInfoResponse? connectionInfo;
  /// The timestamp at which the blockchain node was first created.
  final String? createTime;
  /// Ethereum-specific blockchain node details.
  final EthereumDetailsResponse? ethereumDetails;
  /// User-provided key-value pairs.
  final Map<String, String>? labels;
  /// The fully qualified name of the blockchain node. e.g. `projects/my-project/locations/us-central1/blockchainNodes/my-node`.
  final String? name;
  /// Optional. When true, the node is only accessible via Private Service Connect; no public endpoints are exposed. Otherwise, the node is only accessible via public endpoints. See https://cloud.google.com/vpc/docs/private-service-connect.
  final bool? privateServiceConnectEnabled;
  /// A status representing the state of the node.
  final String? state;
  /// The timestamp at which the blockchain node was last updated.
  final String? updateTime;

  /// Creates a new [GetBlockchainNodeResult].
  /// [blockchainType] Immutable. The blockchain type of the node.
  /// [connectionInfo] The connection information used to interact with a blockchain node.
  /// [createTime] The timestamp at which the blockchain node was first created.
  /// [ethereumDetails] Ethereum-specific blockchain node details.
  /// [labels] User-provided key-value pairs.
  /// [name] The fully qualified name of the blockchain node. e.g. `projects/my-project/locations/us-central1/blockchainNodes/my-node`.
  /// [privateServiceConnectEnabled] Optional. When true, the node is only accessible via Private Service Connect; no public endpoints are exposed. Otherwise, the node is only accessible via public endpoints. See https://cloud.google.com/vpc/docs/private-service-connect.
  /// [state] A status representing the state of the node.
  /// [updateTime] The timestamp at which the blockchain node was last updated.
  const GetBlockchainNodeResult({
    this.blockchainType,
    this.connectionInfo,
    this.createTime,
    this.ethereumDetails,
    this.labels,
    this.name,
    this.privateServiceConnectEnabled,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockchainType': ?blockchainType,
      'connectionInfo': ?connectionInfo?.toMap(),
      'createTime': ?createTime,
      'ethereumDetails': ?ethereumDetails?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'privateServiceConnectEnabled': ?privateServiceConnectEnabled,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetBlockchainNodeResult.fromMap(Map<String, dynamic> map) {
    return GetBlockchainNodeResult(
      blockchainType: (() { final guardedValue = map['blockchainType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionInfo: (() { final guardedValue = map['connectionInfo']; if (guardedValue == null) return null; return ConnectionInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ethereumDetails: (() { final guardedValue = map['ethereumDetails']; if (guardedValue == null) return null; return EthereumDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateServiceConnectEnabled: (() { final guardedValue = map['privateServiceConnectEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
