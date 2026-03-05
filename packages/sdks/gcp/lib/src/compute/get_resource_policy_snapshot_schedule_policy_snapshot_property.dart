// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcePolicySnapshotSchedulePolicySnapshotProperty {
  /// Creates the new snapshot in the snapshot chain labeled with the
  /// specified name. The chain name must be 1-63 characters long and comply
  /// with RFC1035.
  final pulumi.Input<String> chainName;
  /// Whether to perform a 'guest aware' snapshot.
  final pulumi.Input<bool> guestFlush;
  /// A set of key-value pairs.
  final pulumi.Input<Map<String, String>> labels;
  /// Cloud Storage bucket location to store the auto snapshot
  /// (regional or multi-regional)
  final pulumi.Input<List<String>> storageLocations;

  /// Creates a new [GetResourcePolicySnapshotSchedulePolicySnapshotProperty].
  /// [chainName] Creates the new snapshot in the snapshot chain labeled with the
  /// [guestFlush] Whether to perform a 'guest aware' snapshot.
  /// [labels] A set of key-value pairs.
  /// [storageLocations] Cloud Storage bucket location to store the auto snapshot
  GetResourcePolicySnapshotSchedulePolicySnapshotProperty({
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

  factory GetResourcePolicySnapshotSchedulePolicySnapshotProperty.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicySnapshotSchedulePolicySnapshotProperty(
      chainName: pulumi.Input.fromValue(map['chainName'] as String),
      guestFlush: pulumi.Input.fromValue(map['guestFlush'] as bool),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      storageLocations: pulumi.Input.fromValue((map['storageLocations'] as List).cast<String>()),
    );
  }
}

