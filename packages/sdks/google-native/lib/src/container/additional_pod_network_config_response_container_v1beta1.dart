// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'max_pods_constraint_response_container_v1beta1.dart';

/// AdditionalPodNetworkConfig is the configuration for additional pod networks within the NodeNetworkConfig message
class AdditionalPodNetworkConfigResponseContainerV1beta1 {
  /// The maximum number of pods per node which use this pod network
  final pulumi.Input<MaxPodsConstraintResponseContainerV1beta1> maxPodsPerNode;
  /// The name of the secondary range on the subnet which provides IP address for this pod range
  final pulumi.Input<String> secondaryPodRange;
  /// Name of the subnetwork where the additional pod network belongs
  final pulumi.Input<String> subnetwork;

  /// Creates a new [AdditionalPodNetworkConfigResponseContainerV1beta1].
  /// [maxPodsPerNode] The maximum number of pods per node which use this pod network
  /// [secondaryPodRange] The name of the secondary range on the subnet which provides IP address for this pod range
  /// [subnetwork] Name of the subnetwork where the additional pod network belongs
  AdditionalPodNetworkConfigResponseContainerV1beta1({
    required this.maxPodsPerNode,
    required this.secondaryPodRange,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': pulumi.Input.mapInputValue<MaxPodsConstraintResponseContainerV1beta1, Map<String, dynamic>>(maxPodsPerNode, (value) => value.toMap()),
      'secondaryPodRange': secondaryPodRange,
      'subnetwork': subnetwork,
    };
  }

  factory AdditionalPodNetworkConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AdditionalPodNetworkConfigResponseContainerV1beta1(
      maxPodsPerNode: pulumi.Input.fromValue(MaxPodsConstraintResponseContainerV1beta1.fromMap((map['maxPodsPerNode']! as Map).cast<String, dynamic>())),
      secondaryPodRange: pulumi.Input.fromValue(map['secondaryPodRange'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
    );
  }
}

