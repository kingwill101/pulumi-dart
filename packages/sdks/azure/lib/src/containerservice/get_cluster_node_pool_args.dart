// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_cluster_node_pool_get_cluster_node_pool_args_doc}
/// Arguments for getClusterNodePool.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_cluster_node_pool_get_cluster_node_pool_args_doc}
class GetClusterNodePoolArgs {
  /// The Name of the Kubernetes Cluster where this Node Pool is located.
  final pulumi.Input<String> kubernetesClusterName;

  /// The name of this Kubernetes Cluster Node Pool.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the Kubernetes Cluster exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetClusterNodePoolArgs].
  /// [kubernetesClusterName] The Name of the Kubernetes Cluster where this Node Pool is located.
  /// [name] The name of this Kubernetes Cluster Node Pool.
  /// [resourceGroupName] The name of the Resource Group where the Kubernetes Cluster exists.
  GetClusterNodePoolArgs({
    required this.kubernetesClusterName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesClusterName': kubernetesClusterName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClusterNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolArgs(
      kubernetesClusterName: pulumi.Input.fromValue(
        map['kubernetesClusterName'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
