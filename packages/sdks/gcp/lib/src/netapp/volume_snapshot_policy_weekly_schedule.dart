// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeSnapshotPolicyWeeklySchedule {
  /// Set the day or days of the week to make a snapshot. Accepts a comma separated days of the week. Defaults to 'Sunday'.
  final pulumi.Input<String>? day;
  /// Set the hour to create the snapshot (0-23), defaults to midnight (0).
  final pulumi.Input<int>? hour;
  /// Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  final pulumi.Input<int>? minute;
  /// The maximum number of snapshots to keep for the weekly schedule.
  final pulumi.Input<int> snapshotsToKeep;

  /// Creates a new [VolumeSnapshotPolicyWeeklySchedule].
  /// [day] Set the day or days of the week to make a snapshot. Accepts a comma separated days of the week. Defaults to 'Sunday'.
  /// [hour] Set the hour to create the snapshot (0-23), defaults to midnight (0).
  /// [minute] Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  /// [snapshotsToKeep] The maximum number of snapshots to keep for the weekly schedule.
  VolumeSnapshotPolicyWeeklySchedule({
    this.day,
    this.hour,
    this.minute,
    required this.snapshotsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'hour': ?hour,
      'minute': ?minute,
      'snapshotsToKeep': snapshotsToKeep,
    };
  }

  factory VolumeSnapshotPolicyWeeklySchedule.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotPolicyWeeklySchedule(
      day: map['day'] == null ? null : (map['day'] as String).input(),
      hour: map['hour'] == null ? null : (map['hour'] as int).input(),
      minute: map['minute'] == null ? null : (map['minute'] as int).input(),
      snapshotsToKeep: (map['snapshotsToKeep'] as int).input(),
    );
  }
}

