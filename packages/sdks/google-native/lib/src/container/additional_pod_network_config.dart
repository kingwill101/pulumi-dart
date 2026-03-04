// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'max_pods_constraint.dart';

/// AdditionalPodNetworkConfig is the configuration for additional pod networks within the NodeNetworkConfig message
class AdditionalPodNetworkConfig {
  /// The maximum number of pods per node which use this pod network
  final pulumi.Input<MaxPodsConstraint>? maxPodsPerNode;

  /// The name of the secondary range on the subnet which provides IP address for this pod range
  final pulumi.Input<String>? secondaryPodRange;

  /// Name of the subnetwork where the additional pod network belongs
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [AdditionalPodNetworkConfig].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range
  /// [subnetwork] Name of the subnetwork where the additional pod network belongs
  AdditionalPodNetworkConfig({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode':
          ?pulumi.Input.mapOptionalInputValue<
            MaxPodsConstraint,
            Map<String, dynamic>
          >(maxPodsPerNode, (value) => value.toMap()),
      'secondaryPodRange': ?secondaryPodRange,
      'subnetwork': ?subnetwork,
    };
  }

  factory AdditionalPodNetworkConfig.fromMap(Map<String, dynamic> map) {
    return AdditionalPodNetworkConfig(
      maxPodsPerNode: (() {
        final guardedValue = map['maxPodsPerNode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MaxPodsConstraint.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secondaryPodRange: (() {
        final guardedValue = map['secondaryPodRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetwork: (() {
        final guardedValue = map['subnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
