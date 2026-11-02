// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnapshotPolicyDailySchedule {
  /// Hour of the day that the snapshots will be created, valid range is from 0 to 23.
  final pulumi.Input<int> hour;
  /// Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  final pulumi.Input<int> minute;
  /// How many hourly snapshots to keep, valid range is from 0 to 255.
  final pulumi.Input<int> snapshotsToKeep;

  /// Creates a new [SnapshotPolicyDailySchedule].
  /// [hour] Hour of the day that the snapshots will be created, valid range is from 0 to 23.
  /// [minute] Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  /// [snapshotsToKeep] How many hourly snapshots to keep, valid range is from 0 to 255.
  const SnapshotPolicyDailySchedule({
    required this.hour,
    required this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hour': hour,
      'minute': minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory SnapshotPolicyDailySchedule.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyDailySchedule(
      hour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hour'])),
      minute: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minute'])),
      snapshotsToKeep: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['snapshotsToKeep'])),
    );
  }
}
