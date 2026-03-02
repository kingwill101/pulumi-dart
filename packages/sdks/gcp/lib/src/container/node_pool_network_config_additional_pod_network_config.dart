// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNetworkConfigAdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network.
  final pulumi.Input<int>? maxPodsPerNode;
  /// The name of the secondary range on the subnet which provides IP address for this pod range.
  final pulumi.Input<String>? secondaryPodRange;
  /// Name of the subnetwork where the additional pod network belongs.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [NodePoolNetworkConfigAdditionalPodNetworkConfig].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network.
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range.
  /// [subnetwork] Name of the subnetwork where the additional pod network belongs.
  NodePoolNetworkConfigAdditionalPodNetworkConfig({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': ?maxPodsPerNode,
      'secondaryPodRange': ?secondaryPodRange,
      'subnetwork': ?subnetwork,
    };
  }

  factory NodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNetworkConfigAdditionalPodNetworkConfig(
      maxPodsPerNode: map['maxPodsPerNode'] == null ? null : (map['maxPodsPerNode']! as int).input(),
      secondaryPodRange: map['secondaryPodRange'] == null ? null : (map['secondaryPodRange']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
    );
  }
}

