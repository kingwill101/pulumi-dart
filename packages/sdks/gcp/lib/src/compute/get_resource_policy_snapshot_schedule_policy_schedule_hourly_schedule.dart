// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule {
  /// The number of hours between snapshots.
  final pulumi.Input<int> hoursInCycle;
  /// Time within the window to start the operations.
  /// It must be in an hourly format "HH:MM",
  /// where HH : [00-23] and MM : [00] GMT. eg: 21:00
  final pulumi.Input<String> startTime;

  /// Creates a new [GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule].
  /// [hoursInCycle] The number of hours between snapshots.
  /// [startTime] Time within the window to start the operations.
  const GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule({
    required this.hoursInCycle,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hoursInCycle': hoursInCycle,
      'startTime': startTime,
    };
  }

  factory GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule(
      hoursInCycle: pulumi.Input.fromValue(map['hoursInCycle'] as int),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

