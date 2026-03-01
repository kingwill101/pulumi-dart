// ignore_for_file: unused_element, unnecessary_cast


class SnapshotPolicyDailySchedule {
  /// Hour of the day that the snapshots will be created, valid range is from 0 to 23.
  final int hour;
  /// Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  final int minute;
  /// How many hourly snapshots to keep, valid range is from 0 to 255.
  final int snapshotsToKeep;

  /// Creates a new [SnapshotPolicyDailySchedule].
  /// [hour] Hour of the day that the snapshots will be created, valid range is from 0 to 23.
  /// [minute] Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  /// [snapshotsToKeep] How many hourly snapshots to keep, valid range is from 0 to 255.
  SnapshotPolicyDailySchedule({
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
      hour: map['hour'] as int,
      minute: map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] as int,
    );
  }
}

