// ignore_for_file: unused_element, unnecessary_cast


class GetSnapshotPolicyWeeklySchedule {
  /// List of the week days using English names when the snapshots will be created.
  final List<String> daysOfWeeks;
  /// Hour of the day that the snapshots will be created.
  final int hour;
  /// Minute of the hour that the snapshots will be created.
  final int minute;
  /// How many hourly snapshots to keep.
  final int snapshotsToKeep;

  /// Creates a new [GetSnapshotPolicyWeeklySchedule].
  /// [daysOfWeeks] List of the week days using English names when the snapshots will be created.
  /// [hour] Hour of the day that the snapshots will be created.
  /// [minute] Minute of the hour that the snapshots will be created.
  /// [snapshotsToKeep] How many hourly snapshots to keep.
  GetSnapshotPolicyWeeklySchedule({
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
      daysOfWeeks: (map['daysOfWeeks'] as List).cast<String>(),
      hour: map['hour'] as int,
      minute: map['minute'] as int,
      snapshotsToKeep: map['snapshotsToKeep'] as int,
    );
  }
}

