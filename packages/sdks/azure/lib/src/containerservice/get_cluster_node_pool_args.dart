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
    required pulumi.Output<String> kubernetesClusterName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      kubernetesClusterName = pulumi.Input.asInput<String>(kubernetesClusterName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesClusterName': kubernetesClusterName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetClusterNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolArgs(
      kubernetesClusterName: pulumi.Output.create<String>(map['kubernetesClusterName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

