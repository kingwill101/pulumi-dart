// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network.
  final pulumi.Input<int>? maxPodsPerNode;
  /// The name of the secondary range on the subnet which provides IP address for this pod range.
  final pulumi.Input<String>? secondaryPodRange;
  /// The name or selfLink of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network.
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range.
  /// [subnetwork] The name or selfLink of the Google Compute Engine
  const ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig({
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

  factory ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNetworkConfigAdditionalPodNetworkConfig(
      maxPodsPerNode: (() { final guardedValue = map['maxPodsPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      secondaryPodRange: (() { final guardedValue = map['secondaryPodRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
