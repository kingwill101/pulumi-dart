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
  GetKubernetesClusterArgs({
    required pulumi.Output<String> kubernetesClusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      kubernetesClusterName = pulumi.Input.asInput<String>(kubernetesClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesClusterName': kubernetesClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterArgs(
      kubernetesClusterName: pulumi.Output.create<String>(map['kubernetesClusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

