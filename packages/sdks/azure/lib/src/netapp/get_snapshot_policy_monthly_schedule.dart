// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotPolicyMonthlySchedule {
  final pulumi.Input<List<int>> daysOfMonths;
  /// Hour of the day that the snapshots will be created.
  final pulumi.Input<int> hour;
  /// Minute of the hour that the snapshots will be created.
  final pulumi.Input<int> minute;
  /// How many hourly snapshots to keep.
  final pulumi.Input<int> snapshotsToKeep;

  /// Creates a new [GetSnapshotPolicyMonthlySchedule].
  /// [daysOfMonths] Required.
  /// [hour] Hour of the day that the snapshots will be created.
  /// [minute] Minute of the hour that the snapshots will be created.
  /// [snapshotsToKeep] How many hourly snapshots to keep.
  const GetSnapshotPolicyMonthlySchedule({
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

  factory GetSnapshotPolicyMonthlySchedule.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyMonthlySchedule(
      daysOfMonths: pulumi.Input.fromValue((map['daysOfMonths'] as List).cast<int>()),
      hour: pulumi.Input.fromValue(map['hour'] as int),
      minute: pulumi.Input.fromValue(map['minute'] as int),
      snapshotsToKeep: pulumi.Input.fromValue(map['snapshotsToKeep'] as int),
    );
  }
}

