// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotPolicyWeeklySchedule {
  /// List of the week days using English names when the snapshots will be created.
  final pulumi.Input<List<String>> daysOfWeeks;
  /// Hour of the day that the snapshots will be created.
  final pulumi.Input<int> hour;
  /// Minute of the hour that the snapshots will be created.
  final pulumi.Input<int> minute;
  /// How many hourly snapshots to keep.
  final pulumi.Input<int> snapshotsToKeep;

  /// Creates a new [GetSnapshotPolicyWeeklySchedule].
  /// [daysOfWeeks] List of the week days using English names when the snapshots will be created.
  /// [hour] Hour of the day that the snapshots will be created.
  /// [minute] Minute of the hour that the snapshots will be created.
  /// [snapshotsToKeep] How many hourly snapshots to keep.
  GetSnapshotPolicyWeeklySchedule({
    required this.daysOfWeeks,
    required this.hour,
    required this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks': daysOfWeeks,
      'hour': hour,
      'minute': minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory GetSnapshotPolicyWeeklySchedule.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyWeeklySchedule(
      daysOfWeeks: ((map['daysOfWeeks'] as List).cast<String>()).input(),
      hour: (map['hour'] as int).input(),
      minute: (map['minute'] as int).input(),
      snapshotsToKeep: (map['snapshotsToKeep'] as int).input(),
    );
  }
}

