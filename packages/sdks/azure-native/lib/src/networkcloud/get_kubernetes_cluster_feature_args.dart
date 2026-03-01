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
    required pulumi.Output<String> featureName,
    required pulumi.Output<String> kubernetesClusterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      featureName = pulumi.Input.asInput<String>(featureName),
      kubernetesClusterName = pulumi.Input.asInput<String>(kubernetesClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': featureName,
      'kubernetesClusterName': kubernetesClusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKubernetesClusterFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterFeatureArgs(
      featureName: pulumi.Output.create<String>(map['featureName'] as String),
      kubernetesClusterName: pulumi.Output.create<String>(map['kubernetesClusterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

