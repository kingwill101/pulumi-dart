// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnapshotPolicyHourlySchedule {
  /// Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  final pulumi.Input<int> minute;
  /// How many hourly snapshots to keep, valid range is from 0 to 255.
  final pulumi.Input<int> snapshotsToKeep;

  /// Creates a new [SnapshotPolicyHourlySchedule].
  /// [minute] Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  /// [snapshotsToKeep] How many hourly snapshots to keep, valid range is from 0 to 255.
  const SnapshotPolicyHourlySchedule({
    required this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minute': minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory SnapshotPolicyHourlySchedule.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyHourlySchedule(
      minute: pulumi.Input.fromValue(map['minute'] as int),
      snapshotsToKeep: pulumi.Input.fromValue(map['snapshotsToKeep'] as int),
    );
  }
}

