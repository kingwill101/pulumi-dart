// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStorageBoxesStorageBoxSnapshotPlan {
  /// Day of the month when the Snapshot Plan is executed. Null means every day.
  final pulumi.Input<int> dayOfMonth;
  /// Day of the week when the Snapshot Plan is executed. Starts at 0 for Sunday til 6 for Saturday. Note that this differs from the API, which uses 1 (Monday) through 7 (Sunday). Null means every day.
  final pulumi.Input<int> dayOfWeek;
  /// Hour when the Snapshot Plan is executed (UTC).
  final pulumi.Input<int> hour;
  /// Maximum amount of Snapshots that will be created by this Snapshot Plan. Older Snapshots will be deleted.
  final pulumi.Input<int> maxSnapshots;
  /// Minute when the Snapshot Plan is executed (UTC).
  final pulumi.Input<int> minute;

  /// Creates a new [GetStorageBoxesStorageBoxSnapshotPlan].
  /// [dayOfMonth] Day of the month when the Snapshot Plan is executed. Null means every day.
  /// [dayOfWeek] Day of the week when the Snapshot Plan is executed. Starts at 0 for Sunday til 6 for Saturday. Note that this differs from the API, which uses 1 (Monday) through 7 (Sunday). Null means every day.
  /// [hour] Hour when the Snapshot Plan is executed (UTC).
  /// [maxSnapshots] Maximum amount of Snapshots that will be created by this Snapshot Plan. Older Snapshots will be deleted.
  /// [minute] Minute when the Snapshot Plan is executed (UTC).
  GetStorageBoxesStorageBoxSnapshotPlan({
    required this.dayOfMonth,
    required this.dayOfWeek,
    required this.hour,
    required this.maxSnapshots,
    required this.minute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': dayOfMonth,
      'dayOfWeek': dayOfWeek,
      'hour': hour,
      'maxSnapshots': maxSnapshots,
      'minute': minute,
    };
  }

  factory GetStorageBoxesStorageBoxSnapshotPlan.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxesStorageBoxSnapshotPlan(
      dayOfMonth: (map['dayOfMonth'] as int).input(),
      dayOfWeek: (map['dayOfWeek'] as int).input(),
      hour: (map['hour'] as int).input(),
      maxSnapshots: (map['maxSnapshots'] as int).input(),
      minute: (map['minute'] as int).input(),
    );
  }
}

