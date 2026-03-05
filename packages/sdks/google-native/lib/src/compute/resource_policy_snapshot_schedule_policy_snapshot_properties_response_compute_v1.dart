// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specified snapshot properties for scheduled snapshots created by this policy.
class ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeV1 {
  /// Chain name that the snapshot is created in.
  final pulumi.Input<String> chainName;
  /// Indication to perform a 'guest aware' snapshot.
  final pulumi.Input<bool> guestFlush;
  /// Labels to apply to scheduled snapshots. These can be later modified by the setLabels method. Label values may be empty.
  final pulumi.Input<Map<String, String>> labels;
  /// Cloud Storage bucket storage location of the auto snapshot (regional or multi-regional).
  final pulumi.Input<List<String>> storageLocations;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeV1].
  /// [chainName] Chain name that the snapshot is created in.
  /// [guestFlush] Indication to perform a 'guest aware' snapshot.
  /// [labels] Labels to apply to scheduled snapshots. These can be later modified by the setLabels method. Label values may be empty.
  /// [storageLocations] Cloud Storage bucket storage location of the auto snapshot (regional or multi-regional).
  ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeV1({
    required this.chainName,
    required this.guestFlush,
    required this.labels,
    required this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': chainName,
      'guestFlush': guestFlush,
      'labels': labels,
      'storageLocations': storageLocations,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySnapshotPropertiesResponseComputeV1(
      chainName: pulumi.Input.fromValue(map['chainName'] as String),
      guestFlush: pulumi.Input.fromValue(map['guestFlush'] as bool),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      storageLocations: pulumi.Input.fromValue((map['storageLocations'] as List).cast<String>()),
    );
  }
}

