// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterComputeResourceConfigNewReservedInstances {
  /// Name of the reservation from which VM instances should be created, in the
  /// format `projects/{project}/zones/{zone}/reservations/{reservation}`.
  final pulumi.Input<String>? reservation;

  /// Creates a new [ClusterComputeResourceConfigNewReservedInstances].
  /// [reservation] Name of the reservation from which VM instances should be created, in the
  const ClusterComputeResourceConfigNewReservedInstances({
    this.reservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reservation': ?reservation,
    };
  }

  factory ClusterComputeResourceConfigNewReservedInstances.fromMap(Map<String, dynamic> map) {
    return ClusterComputeResourceConfigNewReservedInstances(
      reservation: (() { final guardedValue = map['reservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
