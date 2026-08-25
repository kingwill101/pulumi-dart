// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNetworkConfigAdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network.
  final pulumi.Input<int?>? maxPodsPerNode;
  /// The name of the secondary range on the subnet which provides IP address for this pod range.
  final pulumi.Input<String?>? secondaryPodRange;
  /// Name of the subnetwork where the additional pod network belongs.
  final pulumi.Input<String?>? subnetwork;

  /// Creates a new [NodePoolNetworkConfigAdditionalPodNetworkConfig].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network.
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range.
  /// [subnetwork] Name of the subnetwork where the additional pod network belongs.
  const NodePoolNetworkConfigAdditionalPodNetworkConfig({
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
      maxPodsPerNode: (() { final guardedValue = map['maxPodsPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      secondaryPodRange: (() { final guardedValue = map['secondaryPodRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
