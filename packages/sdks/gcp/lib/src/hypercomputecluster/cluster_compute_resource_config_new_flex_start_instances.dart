// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterComputeResourceConfigNewFlexStartInstances {
  /// Name of the Compute Engine [machine
  /// type](https://cloud.google.com/compute/docs/machine-resource) to use, e.g.
  /// `n2-standard-2`.
  final pulumi.Input<String> machineType;
  /// Specifies the time limit for created instances. Instances will be
  /// terminated at the end of this duration.
  final pulumi.Input<String> maxDuration;
  /// Name of the zone in which VM instances should run, e.g., `us-central1-a`.
  /// Must be in the same region as the cluster, and must match the zone of any
  /// other resources specified in the cluster.
  final pulumi.Input<String> zone;

  /// Creates a new [ClusterComputeResourceConfigNewFlexStartInstances].
  /// [machineType] Name of the Compute Engine [machine
  /// [maxDuration] Specifies the time limit for created instances. Instances will be
  /// [zone] Name of the zone in which VM instances should run, e.g., `us-central1-a`.
  const ClusterComputeResourceConfigNewFlexStartInstances({
    required this.machineType,
    required this.maxDuration,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': machineType,
      'maxDuration': maxDuration,
      'zone': zone,
    };
  }

  factory ClusterComputeResourceConfigNewFlexStartInstances.fromMap(Map<String, dynamic> map) {
    return ClusterComputeResourceConfigNewFlexStartInstances(
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      maxDuration: pulumi.Input.fromValue(map['maxDuration'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
