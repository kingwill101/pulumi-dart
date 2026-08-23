// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterComputeResourceConfigNewOnDemandInstances {
  /// Name of the Compute Engine [machine
  /// type](https://cloud.google.com/compute/docs/machine-resource) to use, e.g.
  /// `n2-standard-2`.
  final pulumi.Input<String> machineType;
  /// Name of the zone in which VM instances should run, e.g., `us-central1-a`.
  /// Must be in the same region as the cluster, and must match the zone of any
  /// other resources specified in the cluster.
  final pulumi.Input<String> zone;

  /// Creates a new [ClusterComputeResourceConfigNewOnDemandInstances].
  /// [machineType] Name of the Compute Engine [machine
  /// [zone] Name of the zone in which VM instances should run, e.g., `us-central1-a`.
  const ClusterComputeResourceConfigNewOnDemandInstances({
    required this.machineType,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': machineType,
      'zone': zone,
    };
  }

  factory ClusterComputeResourceConfigNewOnDemandInstances.fromMap(Map<String, dynamic> map) {
    return ClusterComputeResourceConfigNewOnDemandInstances(
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
