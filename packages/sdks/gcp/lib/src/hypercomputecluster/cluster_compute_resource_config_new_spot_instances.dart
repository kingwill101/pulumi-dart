// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterComputeResourceConfigNewSpotInstances {
  /// Name of the Compute Engine [machine
  /// type](https://cloud.google.com/compute/docs/machine-resource) to use, e.g.
  /// `n2-standard-2`.
  final pulumi.Input<String> machineType;
  /// Specifies the termination action of the instance
  /// Possible values:
  /// STOP
  /// DELETE
  final pulumi.Input<String?>? terminationAction;
  /// Name of the zone in which VM instances should run, e.g., `us-central1-a`.
  /// Must be in the same region as the cluster, and must match the zone of any
  /// other resources specified in the cluster.
  final pulumi.Input<String> zone;

  /// Creates a new [ClusterComputeResourceConfigNewSpotInstances].
  /// [machineType] Name of the Compute Engine [machine
  /// [terminationAction] Specifies the termination action of the instance
  /// [zone] Name of the zone in which VM instances should run, e.g., `us-central1-a`.
  const ClusterComputeResourceConfigNewSpotInstances({
    required this.machineType,
    this.terminationAction,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': machineType,
      'terminationAction': ?terminationAction,
      'zone': zone,
    };
  }

  factory ClusterComputeResourceConfigNewSpotInstances.fromMap(Map<String, dynamic> map) {
    return ClusterComputeResourceConfigNewSpotInstances(
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      terminationAction: (() { final guardedValue = map['terminationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
