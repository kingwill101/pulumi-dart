// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_kubernetes_cluster_get_kubernetes_cluster_args_doc}
/// Arguments for getKubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_kubernetes_cluster_get_kubernetes_cluster_args_doc}
class GetKubernetesClusterArgs {
  /// The name of the managed Kubernetes Cluster.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the managed Kubernetes Cluster exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKubernetesClusterArgs].
  /// [name] The name of the managed Kubernetes Cluster.
  /// [resourceGroupName] The name of the Resource Group in which the managed Kubernetes Cluster exists.
  GetKubernetesClusterArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

