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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// User-provided key-value pairs
  /// Structure is documented below.
  final pulumi.Input<BlockchainNodesEthereumDetails>? ethereumDetails;
  /// User-provided key-value pairs
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [ethereumDetails] User-provided key-value pairs
  /// [labels] User-provided key-value pairs
  /// [location] Location of Blockchain Node being created.
  /// [name] The fully qualified name of the blockchain node. e.g. projects/my-project/locations/us-central1/blockchainNodes/my-node.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The timestamp at which the blockchain node was last updated.
  const BlockchainNodesState({
    this.blockchainNodeId,
    this.blockchainType,
    this.connectionInfos,
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      blockchainNodeId: (() { final guardedValue = map['blockchainNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blockchainType: (() { final guardedValue = map['blockchainType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionInfos: (() { final guardedValue = map['connectionInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BlockchainNodesConnectionInfo>(guardedValue, (value) => BlockchainNodesConnectionInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ethereumDetails: (() { final guardedValue = map['ethereumDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlockchainNodesEthereumDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
