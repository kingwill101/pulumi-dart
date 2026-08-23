// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_kubernetes_cluster_args_doc}
/// Arguments for getKubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_kubernetes_cluster_args_doc}
class GetKubernetesClusterArgs {
  /// The name of the Kubernetes cluster.
  final pulumi.Input<String> kubernetesClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKubernetesClusterArgs].
  /// [kubernetesClusterName] The name of the Kubernetes cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetKubernetesClusterArgs({
    required this.kubernetesClusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesClusterName': kubernetesClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterArgs(
      kubernetesClusterName: pulumi.Input.fromValue(map['kubernetesClusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
