// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetShareSnapshotSchedule {
  /// The name of this Data Share.
  final pulumi.Input<String> name;

  /// The interval of the synchronization with the source data.
  final pulumi.Input<String> recurrence;

  /// The synchronization with the source data's start time.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetShareSnapshotSchedule].
  /// [name] The name of this Data Share.
  /// [recurrence] The interval of the synchronization with the source data.
  /// [startTime] The synchronization with the source data's start time.
  GetShareSnapshotSchedule({
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

  factory GetShareSnapshotSchedule.fromMap(Map<String, dynamic> map) {
    return GetShareSnapshotSchedule(
      name: pulumi.Input.fromValue(map['name'] as String),
      recurrence: pulumi.Input.fromValue(map['recurrence'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
