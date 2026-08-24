// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetR2DataCatalogMaintenanceConfigSnapshotExpiration {
  /// Specifies the maximum age for snapshots. The system deletes snapshots older than this age.
  /// Format: \n\n\n\n where unit is d (days), h (hours), m (minutes), or s (seconds).
  /// Examples: "7d" (7 days), "48h" (48 hours), "2880m" (2,880 minutes).
  /// Defaults to "7d".
  final pulumi.Input<String> maxSnapshotAge;
  /// Specifies the minimum number of snapshots to retain. Defaults to 100.
  final pulumi.Input<int> minSnapshotsToKeep;
  /// Specifies the state of maintenance operations.
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String> state;

  /// Creates a new [GetR2DataCatalogMaintenanceConfigSnapshotExpiration].
  /// [maxSnapshotAge] Specifies the maximum age for snapshots. The system deletes snapshots older than this age.
  /// [minSnapshotsToKeep] Specifies the minimum number of snapshots to retain. Defaults to 100.
  /// [state] Specifies the state of maintenance operations.
  const GetR2DataCatalogMaintenanceConfigSnapshotExpiration({
    required this.maxSnapshotAge,
    required this.minSnapshotsToKeep,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSnapshotAge': maxSnapshotAge,
      'minSnapshotsToKeep': minSnapshotsToKeep,
      'state': state,
    };
  }

  factory GetR2DataCatalogMaintenanceConfigSnapshotExpiration.fromMap(Map<String, dynamic> map) {
    return GetR2DataCatalogMaintenanceConfigSnapshotExpiration(
      maxSnapshotAge: pulumi.Input.fromValue(map['maxSnapshotAge'] as String),
      minSnapshotsToKeep: pulumi.Input.fromValue((map['minSnapshotsToKeep'] as num).toInt()),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
