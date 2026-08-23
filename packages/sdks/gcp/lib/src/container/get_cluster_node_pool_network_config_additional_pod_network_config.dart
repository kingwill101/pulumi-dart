// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network.
  final pulumi.Input<int> maxPodsPerNode;
  /// The name of the secondary range on the subnet which provides IP address for this pod range.
  final pulumi.Input<String> secondaryPodRange;
  /// Name of the subnetwork where the additional pod network belongs.
  final pulumi.Input<String> subnetwork;

  /// Creates a new [GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network.
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range.
  /// [subnetwork] Name of the subnetwork where the additional pod network belongs.
  const GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig({
    required this.maxPodsPerNode,
    required this.secondaryPodRange,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': maxPodsPerNode,
      'secondaryPodRange': secondaryPodRange,
      'subnetwork': subnetwork,
    };
  }

  factory GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNetworkConfigAdditionalPodNetworkConfig(
      maxPodsPerNode: pulumi.Input.fromValue(map['maxPodsPerNode'] as int),
      secondaryPodRange: pulumi.Input.fromValue(map['secondaryPodRange'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}
