// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicySnapshotSchedulePolicySnapshotProperties {
  /// Creates the new snapshot in the snapshot chain labeled with the
  /// specified name. The chain name must be 1-63 characters long and comply
  /// with RFC1035.
  final pulumi.Input<String>? chainName;
  /// Whether to perform a 'guest aware' snapshot.
  final pulumi.Input<bool>? guestFlush;
  /// A set of key-value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  /// Cloud Storage bucket location to store the auto snapshot
  /// (regional or multi-regional)
  final pulumi.Input<String>? storageLocations;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicySnapshotProperties].
  /// [chainName] Creates the new snapshot in the snapshot chain labeled with the
  /// [guestFlush] Whether to perform a 'guest aware' snapshot.
  /// [labels] A set of key-value pairs.
  /// [storageLocations] Cloud Storage bucket location to store the auto snapshot
  const ResourcePolicySnapshotSchedulePolicySnapshotProperties({
    this.chainName,
    this.guestFlush,
    this.labels,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': ?chainName,
      'guestFlush': ?guestFlush,
      'labels': ?labels,
      'storageLocations': ?storageLocations,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicySnapshotProperties.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySnapshotProperties(
      chainName: (() { final guardedValue = map['chainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestFlush: (() { final guardedValue = map['guestFlush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      storageLocations: (() { final guardedValue = map['storageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
