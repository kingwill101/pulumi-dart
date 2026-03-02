// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'string_key_value_pair.dart';

/// {@template pulumi_networkcloud_kubernetes_cluster_feature_args_doc}
/// The set of arguments for KubernetesClusterFeature.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_kubernetes_cluster_feature_args_doc}
class KubernetesClusterFeatureArgs {
  /// The name of the feature.
  final pulumi.Input<String>? featureName;
  /// The name of the Kubernetes cluster.
  final pulumi.Input<String> kubernetesClusterName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The configured options for the feature.
  final pulumi.Input<List<StringKeyValuePair>>? options;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KubernetesClusterFeatureArgs].
  /// [featureName] The name of the feature.
  /// [kubernetesClusterName] The name of the Kubernetes cluster.
  /// [location] The geo-location where the resource lives
  /// [options] The configured options for the feature.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  KubernetesClusterFeatureArgs({
    this.featureName,
    required this.kubernetesClusterName,
    this.location,
    this.options,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': ?featureName,
      'kubernetesClusterName': kubernetesClusterName,
      'location': ?location,
      'options': ?pulumi.Input.mapOptionalInputValue<List<StringKeyValuePair>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<StringKeyValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory KubernetesClusterFeatureArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterFeatureArgs(
      featureName: map['featureName'] == null ? null : (map['featureName'] as String).input(),
      kubernetesClusterName: (map['kubernetesClusterName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      options: map['options'] == null ? null : (pulumi.Input.decodeList<StringKeyValuePair>(map['options'], (value) => StringKeyValuePair.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

