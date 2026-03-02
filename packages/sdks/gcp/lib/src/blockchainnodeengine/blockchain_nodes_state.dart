// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blockchain_nodes_connection_info.dart';
import 'blockchain_nodes_ethereum_details.dart';

/// Input properties used for looking up and filtering BlockchainNodes resources.
class BlockchainNodesState {
  /// ID of the requesting object.
  final pulumi.Input<String>? blockchainNodeId;
  /// User-provided key-value pairs
  /// Possible values are: `ETHEREUM`.
  final pulumi.Input<String>? blockchainType;
  /// The connection information through which to interact with a blockchain node.
  /// Structure is documented below.
  final pulumi.Input<List<BlockchainNodesConnectionInfo>>? connectionInfos;
  /// The timestamp at which the blockchain node was first created.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// User-provided key-value pairs
  /// Structure is documented below.
  final pulumi.Input<BlockchainNodesEthereumDetails>? ethereumDetails;
  /// User-provided key-value pairs
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location of Blockchain Node being created.
  final pulumi.Input<String>? location;
  /// The fully qualified name of the blockchain node. e.g. projects/my-project/locations/us-central1/blockchainNodes/my-node.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The timestamp at which the blockchain node was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [BlockchainNodesState].
  /// [blockchainNodeId] ID of the requesting object.
  /// [blockchainType] User-provided key-value pairs
  /// [connectionInfos] The connection information through which to interact with a blockchain node.
  /// [createTime] The timestamp at which the blockchain node was first created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ethereumDetails] User-provided key-value pairs
  /// [labels] User-provided key-value pairs
  /// [location] Location of Blockchain Node being created.
  /// [name] The fully qualified name of the blockchain node. e.g. projects/my-project/locations/us-central1/blockchainNodes/my-node.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The timestamp at which the blockchain node was last updated.
  BlockchainNodesState({
    this.blockchainNodeId,
    this.blockchainType,
    this.connectionInfos,
    this.createTime,
    this.effectiveLabels,
    this.ethereumDetails,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockchainNodeId': ?blockchainNodeId,
      'blockchainType': ?blockchainType,
      'connectionInfos': ?pulumi.Input.mapOptionalInputValue<List<BlockchainNodesConnectionInfo>, List<Map<String, dynamic>>>(connectionInfos, (value) => pulumi.Input.encodeList<BlockchainNodesConnectionInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'ethereumDetails': ?pulumi.Input.mapOptionalInputValue<BlockchainNodesEthereumDetails, Map<String, dynamic>>(ethereumDetails, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory BlockchainNodesState.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesState(
      blockchainNodeId: map['blockchainNodeId'] == null ? null : (map['blockchainNodeId']! as String).input(),
      blockchainType: map['blockchainType'] == null ? null : (map['blockchainType']! as String).input(),
      connectionInfos: map['connectionInfos'] == null ? null : (pulumi.Input.decodeList<BlockchainNodesConnectionInfo>(map['connectionInfos']!, (value) => BlockchainNodesConnectionInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      ethereumDetails: map['ethereumDetails'] == null ? null : (BlockchainNodesEthereumDetails.fromMap((map['ethereumDetails']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

