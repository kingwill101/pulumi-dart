// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specified snapshot properties for scheduled snapshots created by this policy.
class ResourcePolicySnapshotSchedulePolicySnapshotProperties {
  /// Chain name that the snapshot is created in.
  final pulumi.Input<String>? chainName;
  /// Indication to perform a 'guest aware' snapshot.
  final pulumi.Input<bool>? guestFlush;
  /// Labels to apply to scheduled snapshots. These can be later modified by the setLabels method. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// Cloud Storage bucket storage location of the auto snapshot (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicySnapshotProperties].
  /// [chainName] Chain name that the snapshot is created in.
  /// [guestFlush] Indication to perform a 'guest aware' snapshot.
  /// [labels] Labels to apply to scheduled snapshots. These can be later modified by the setLabels method. Label values may be empty.
  /// [storageLocations] Cloud Storage bucket storage location of the auto snapshot (regional or multi-regional).
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
      storageLocations: (() { final guardedValue = map['storageLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
