// ignore_for_file: unused_element, unnecessary_cast


class SnapshotPolicyWeeklySchedule {
  /// List of the week days using English names when the snapshots will be created.
  final List<String> daysOfWeeks;
  /// Hour of the day that the snapshots will be created, valid range is from 0 to 23.
  final int hour;
  /// Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  final int minute;
  /// How many hourly snapshots to keep, valid range is from 0 to 255.
  final int snapshotsToKeep;

  /// Creates a new [SnapshotPolicyWeeklySchedule].
  /// [daysOfWeeks] List of the week days using English names when the snapshots will be created.
  /// [hour] Hour of the day that the snapshots will be created, valid range is from 0 to 23.
  /// [minute] Minute of the hour that the snapshots will be created, valid range is from 0 to 59.
  /// [snapshotsToKeep] How many hourly snapshots to keep, valid range is from 0 to 255.
  SnapshotPolicyWeeklySchedule({
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

  factory SnapshotPolicyWeeklySchedule.fromMap(Map<String, dynamic> map) {
    return SnapshotPolicyWeeklySchedule(
      daysOfWeeks: (map['daysOfWeeks'] as List).cast<String>(),
      hour: map['hour'] as int,
      minute: map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] as int,
    );
  }
}

