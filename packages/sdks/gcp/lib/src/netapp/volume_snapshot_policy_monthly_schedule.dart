// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeSnapshotPolicyMonthlySchedule {
  /// Set the day or days of the month to make a snapshot (1-31). Accepts a comma separated number of days. Defaults to '1'.
  final pulumi.Input<String>? daysOfMonth;
  /// Set the hour to create the snapshot (0-23), defaults to midnight (0).
  final pulumi.Input<int>? hour;
  /// Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  final pulumi.Input<int>? minute;
  /// The maximum number of snapshots to keep for the monthly schedule
  final pulumi.Input<int> snapshotsToKeep;

  /// Creates a new [VolumeSnapshotPolicyMonthlySchedule].
  /// [daysOfMonth] Set the day or days of the month to make a snapshot (1-31). Accepts a comma separated number of days. Defaults to '1'.
  /// [hour] Set the hour to create the snapshot (0-23), defaults to midnight (0).
  /// [minute] Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  /// [snapshotsToKeep] The maximum number of snapshots to keep for the monthly schedule
  const VolumeSnapshotPolicyMonthlySchedule({
    this.daysOfMonth,
    this.hour,
    this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonth': ?daysOfMonth,
      'hour': ?hour,
      'minute': ?minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory VolumeSnapshotPolicyMonthlySchedule.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotPolicyMonthlySchedule(
      daysOfMonth: (() { final guardedValue = map['daysOfMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hour: (() { final guardedValue = map['hour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minute: (() { final guardedValue = map['minute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotsToKeep: pulumi.Input.fromValue(map['snapshotsToKeep'] as int),
    );
  }
}

