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
  const GetSnapshotPolicyWeeklySchedule({
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
      daysOfWeeks: pulumi.Input.fromValue((map['daysOfWeeks'] as List).cast<String>()),
      hour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hour'])),
      minute: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minute'])),
      snapshotsToKeep: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['snapshotsToKeep'])),
    );
  }
}
