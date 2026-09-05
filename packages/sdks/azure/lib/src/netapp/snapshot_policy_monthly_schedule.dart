// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnapshotPolicyMonthlySchedule {
  /// List of the days of the month when the snapshots will be created, valid range is from 1 to 30.
  final pulumi.Input<List<int>> daysOfMonths;
  /// Hour of the day that the snapshots will be created, valid range is from 0 to 23.
  final pulumi.Input<int> hour;
  /// Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  final pulumi.Input<int> minute;
  /// How many hourly snapshots to keep, valid range is from 0 to 255.
  final pulumi.Input<int> snapshotsToKeep;

  /// Creates a new [SnapshotPolicyMonthlySchedule].
  /// [daysOfMonths] List of the days of the month when the snapshots will be created, valid range is from 1 to 30.
  /// [hour] Hour of the day that the snapshots will be created, valid range is from 0 to 23.
  /// [minute] Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  /// [snapshotsToKeep] How many hourly snapshots to keep, valid range is from 0 to 255.
  const SnapshotPolicyMonthlySchedule({
    required this.daysOfMonths,
    required this.hour,
    required this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonths': daysOfMonths,
      'hour': hour,
      'minute': minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory SnapshotPolicyMonthlySchedule.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyMonthlySchedule(
      daysOfMonths: pulumi.Input.fromValue((map['daysOfMonths'] as List).cast<int>()),
      hour: pulumi.Input.fromValue((map['hour'] as num).toInt()),
      minute: pulumi.Input.fromValue((map['minute'] as num).toInt()),
      snapshotsToKeep: pulumi.Input.fromValue((map['snapshotsToKeep'] as num).toInt()),
    );
  }
}
