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
      'maxPodsPerNode': ?pulumi.Input.mapOptionalInputValue<MaxPodsConstraint, Map<String, dynamic>>(maxPodsPerNode, (value) => value.toMap()),
      'secondaryPodRange': ?secondaryPodRange,
      'subnetwork': ?subnetwork,
    };
  }

  factory AdditionalPodNetworkConfig.fromMap(Map<String, dynamic> map) {
    return AdditionalPodNetworkConfig(
      maxPodsPerNode: map['maxPodsPerNode'] == null ? null : (MaxPodsConstraint.fromMap((map['maxPodsPerNode']! as Map).cast<String, dynamic>())).input(),
      secondaryPodRange: map['secondaryPodRange'] == null ? null : (map['secondaryPodRange']! as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
    );
  }
}

