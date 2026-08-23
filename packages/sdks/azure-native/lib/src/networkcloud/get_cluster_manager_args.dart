// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_cluster_manager_args_doc}
/// Arguments for getClusterManager.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_cluster_manager_args_doc}
class GetClusterManagerArgs {
  /// The name of the cluster manager.
  final pulumi.Input<String> clusterManagerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetClusterManagerArgs].
  /// [clusterManagerName] The name of the cluster manager.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetClusterManagerArgs({
    required this.clusterManagerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterManagerName': clusterManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClusterManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterManagerArgs(
      clusterManagerName: pulumi.Input.fromValue(map['clusterManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
