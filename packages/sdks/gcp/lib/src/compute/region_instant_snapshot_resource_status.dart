// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstantSnapshotResourceStatus {
  /// (Output)
  /// The size of the storage used by the instant snapshot.
  final pulumi.Input<int?>? storageSizeBytes;

  /// Creates a new [RegionInstantSnapshotResourceStatus].
  /// [storageSizeBytes] (Output)
  const RegionInstantSnapshotResourceStatus({
    this.storageSizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageSizeBytes': ?storageSizeBytes,
    };
  }

  factory RegionInstantSnapshotResourceStatus.fromMap(Map<String, dynamic> map) {
    return RegionInstantSnapshotResourceStatus(
      storageSizeBytes: (() { final guardedValue = map['storageSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
