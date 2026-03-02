// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotPolicyHourlySchedule {
  /// Minute of the hour that the snapshots will be created.
  final pulumi.Input<int> minute;
  /// How many hourly snapshots to keep.
  final pulumi.Input<int> snapshotsToKeep;

  /// Creates a new [GetSnapshotPolicyHourlySchedule].
  /// [minute] Minute of the hour that the snapshots will be created.
  /// [snapshotsToKeep] How many hourly snapshots to keep.
  GetSnapshotPolicyHourlySchedule({
    required this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory GetSnapshotPolicyHourlySchedule.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyHourlySchedule(
      minute: (map['minute'] as int).input(),
      snapshotsToKeep: (map['snapshotsToKeep'] as int).input(),
    );
  }
}

