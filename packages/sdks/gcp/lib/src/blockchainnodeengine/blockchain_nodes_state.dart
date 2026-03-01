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
    pulumi.Output<String>? blockchainNodeId,
    pulumi.Output<String>? blockchainType,
    pulumi.Output<List<BlockchainNodesConnectionInfo>>? connectionInfos,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<BlockchainNodesEthereumDetails>? ethereumDetails,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? updateTime,
  }) :
      blockchainNodeId = pulumi.Input.asOptionalInput<String>(blockchainNodeId),
      blockchainType = pulumi.Input.asOptionalInput<String>(blockchainType),
      connectionInfos = pulumi.Input.asOptionalInput<List<BlockchainNodesConnectionInfo>>(connectionInfos),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      ethereumDetails = pulumi.Input.asOptionalInput<BlockchainNodesEthereumDetails>(ethereumDetails),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      blockchainNodeId: map['blockchainNodeId'] == null ? null : pulumi.Output.create<String>(map['blockchainNodeId'] as String),
      blockchainType: map['blockchainType'] == null ? null : pulumi.Output.create<String>(map['blockchainType'] as String),
      connectionInfos: map['connectionInfos'] == null ? null : pulumi.Output.create<List<BlockchainNodesConnectionInfo>>(pulumi.Input.decodeList<BlockchainNodesConnectionInfo>(map['connectionInfos'], (value) => BlockchainNodesConnectionInfo.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      ethereumDetails: map['ethereumDetails'] == null ? null : pulumi.Output.create<BlockchainNodesEthereumDetails>(BlockchainNodesEthereumDetails.fromMap((map['ethereumDetails'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

