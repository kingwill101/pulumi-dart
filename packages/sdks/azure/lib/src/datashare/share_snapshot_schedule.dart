// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShareSnapshotSchedule {
  /// The name of the snapshot schedule.
  final pulumi.Input<String> name;

  /// The interval of the synchronization with the source data. Possible values are `Hour` and `Day`.
  final pulumi.Input<String> recurrence;

  /// The synchronization with the source data's start time.
  final pulumi.Input<String> startTime;

  /// Creates a new [ShareSnapshotSchedule].
  /// [name] The name of the snapshot schedule.
  /// [recurrence] The interval of the synchronization with the source data. Possible values are `Hour` and `Day`.
  /// [startTime] The synchronization with the source data's start time.
  ShareSnapshotSchedule({
    required this.name,
    required this.recurrence,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recurrence': recurrence,
      'startTime': startTime,
    };
  }

  factory ShareSnapshotSchedule.fromMap(Map<String, dynamic> map) {
    return ShareSnapshotSchedule(
      name: pulumi.Input.fromValue(map['name'] as String),
      recurrence: pulumi.Input.fromValue(map['recurrence'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
