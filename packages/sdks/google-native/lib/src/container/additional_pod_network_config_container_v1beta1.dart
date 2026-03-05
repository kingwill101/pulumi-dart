// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'max_pods_constraint_container_v1beta1.dart';

/// AdditionalPodNetworkConfig is the configuration for additional pod networks within the NodeNetworkConfig message
class AdditionalPodNetworkConfigContainerV1beta1 {
  /// The maximum number of pods per node which use this pod network
  final pulumi.Input<MaxPodsConstraintContainerV1beta1>? maxPodsPerNode;
  /// The name of the secondary range on the subnet which provides IP address for this pod range
  final pulumi.Input<String>? secondaryPodRange;
  /// Name of the subnetwork where the additional pod network belongs
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [AdditionalPodNetworkConfigContainerV1beta1].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range
  /// [subnetwork] Name of the subnetwork where the additional pod network belongs
  AdditionalPodNetworkConfigContainerV1beta1({
    this.maxPodsPerNode,
    this.secondaryPodRange,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': ?pulumi.Input.mapOptionalInputValue<MaxPodsConstraintContainerV1beta1, Map<String, dynamic>>(maxPodsPerNode, (value) => value.toMap()),
      'secondaryPodRange': ?secondaryPodRange,
      'subnetwork': ?subnetwork,
    };
  }

  factory AdditionalPodNetworkConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AdditionalPodNetworkConfigContainerV1beta1(
      maxPodsPerNode: (() { final guardedValue = map['maxPodsPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaxPodsConstraintContainerV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryPodRange: (() { final guardedValue = map['secondaryPodRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

