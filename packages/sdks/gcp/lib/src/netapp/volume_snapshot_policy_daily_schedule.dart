// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeSnapshotPolicyDailySchedule {
  /// Set the hour to create the snapshot (0-23), defaults to midnight (0).
  final pulumi.Input<int>? hour;

  /// Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  final pulumi.Input<int>? minute;

  /// The maximum number of snapshots to keep for the daily schedule.
  final pulumi.Input<int> snapshotsToKeep;

  /// Creates a new [VolumeSnapshotPolicyDailySchedule].
  /// [hour] Set the hour to create the snapshot (0-23), defaults to midnight (0).
  /// [minute] Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  /// [snapshotsToKeep] The maximum number of snapshots to keep for the daily schedule.
  VolumeSnapshotPolicyDailySchedule({
    this.hour,
    this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hour': ?hour,
      'minute': ?minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory VolumeSnapshotPolicyDailySchedule.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotPolicyDailySchedule(
      hour: (() {
        final guardedValue = map['hour'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minute: (() {
        final guardedValue = map['minute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      snapshotsToKeep: pulumi.Input.fromValue(map['snapshotsToKeep'] as int),
    );
  }
}
