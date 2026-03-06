// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_node_type_args_doc}
/// Arguments for getNodeType.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_node_type_args_doc}
class GetNodeTypeArgs {
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the node type.
  final pulumi.Input<String> nodeTypeName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNodeTypeArgs].
  /// [clusterName] The name of the cluster resource.
  /// [nodeTypeName] The name of the node type.
  /// [resourceGroupName] The name of the resource group.
  const GetNodeTypeArgs({
    required this.clusterName,
    required this.nodeTypeName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'nodeTypeName': nodeTypeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNodeTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeTypeArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      nodeTypeName: pulumi.Input.fromValue(map['nodeTypeName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

