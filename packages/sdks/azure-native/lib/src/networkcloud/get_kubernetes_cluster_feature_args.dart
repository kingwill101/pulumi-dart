// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_kubernetes_cluster_feature_args_doc}
/// Arguments for getKubernetesClusterFeature.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_kubernetes_cluster_feature_args_doc}
class GetKubernetesClusterFeatureArgs {
  /// The name of the feature.
  final pulumi.Input<String> featureName;
  /// The name of the Kubernetes cluster.
  final pulumi.Input<String> kubernetesClusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKubernetesClusterFeatureArgs].
  /// [featureName] The name of the feature.
  /// [kubernetesClusterName] The name of the Kubernetes cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetKubernetesClusterFeatureArgs({
    required this.featureName,
    required this.kubernetesClusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': featureName,
      'kubernetesClusterName': kubernetesClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKubernetesClusterFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterFeatureArgs(
      featureName: (map['featureName'] as String).input(),
      kubernetesClusterName: (map['kubernetesClusterName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

