// ignore_for_file: unused_element, unnecessary_cast


class VolumeSnapshotPolicyDailySchedule {
  /// Set the hour to create the snapshot (0-23), defaults to midnight (0).
  final int? hour;
  /// Set the minute of the hour to create the snapshot (0-59), defaults to the top of the hour (0).
  final int? minute;
  /// The maximum number of snapshots to keep for the daily schedule.
  final int snapshotsToKeep;

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
      hour: map['hour'] == null ? null : map['hour'] as int,
      minute: map['minute'] == null ? null : map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] as int,
    );
  }
}

