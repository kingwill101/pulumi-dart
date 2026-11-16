// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterComputeResourceConfigNewReservedInstances {
  /// (Optional, Beta)
  /// A list of network tags to attach to the VM instances.
  /// A maximum of 64 network tags are allowed.
  final pulumi.Input<List<String>?>? networkTags;
  /// Name of the reservation from which VM instances should be created, in the
  /// format `projects/{project}/zones/{zone}/reservations/{reservation}`.
  final pulumi.Input<String?>? reservation;

  /// Creates a new [ClusterComputeResourceConfigNewReservedInstances].
  /// [networkTags] (Optional, Beta)
  /// [reservation] Name of the reservation from which VM instances should be created, in the
  const ClusterComputeResourceConfigNewReservedInstances({
    this.networkTags,
    this.reservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTags': ?networkTags,
      'reservation': ?reservation,
    };
  }

  factory ClusterComputeResourceConfigNewReservedInstances.fromMap(Map<String, dynamic> map) {
    return ClusterComputeResourceConfigNewReservedInstances(
      networkTags: (() { final guardedValue = map['networkTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      reservation: (() { final guardedValue = map['reservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
