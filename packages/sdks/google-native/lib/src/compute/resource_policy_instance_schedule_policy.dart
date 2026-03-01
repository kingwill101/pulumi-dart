// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_instance_schedule_policy_schedule.dart';

/// An InstanceSchedulePolicy specifies when and how frequent certain operations are performed on the instance.
class ResourcePolicyInstanceSchedulePolicy {
  /// The expiration time of the schedule. The timestamp is an RFC3339 string.
  final String? expirationTime;
  /// The start time of the schedule. The timestamp is an RFC3339 string.
  final String? startTime;
  /// Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  final String? timeZone;
  /// Specifies the schedule for starting instances.
  final ResourcePolicyInstanceSchedulePolicySchedule? vmStartSchedule;
  /// Specifies the schedule for stopping instances.
  final ResourcePolicyInstanceSchedulePolicySchedule? vmStopSchedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicy].
  /// [expirationTime] The expiration time of the schedule. The timestamp is an RFC3339 string.
  /// [startTime] The start time of the schedule. The timestamp is an RFC3339 string.
  /// [timeZone] Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  /// [vmStartSchedule] Specifies the schedule for starting instances.
  /// [vmStopSchedule] Specifies the schedule for stopping instances.
  ResourcePolicyInstanceSchedulePolicy({
    this.expirationTime,
    this.startTime,
    this.timeZone,
    this.vmStartSchedule,
    this.vmStopSchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': ?expirationTime,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
      'vmStartSchedule': ?vmStartSchedule == null ? null : vmStartSchedule!.toMap(),
      'vmStopSchedule': ?vmStopSchedule == null ? null : vmStopSchedule!.toMap(),
    };
  }

  factory ResourcePolicyInstanceSchedulePolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicy(
      expirationTime: map['expirationTime'] == null ? null : map['expirationTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      vmStartSchedule: map['vmStartSchedule'] == null ? null : ResourcePolicyInstanceSchedulePolicySchedule.fromMap((map['vmStartSchedule'] as Map).cast<String, dynamic>()),
      vmStopSchedule: map['vmStopSchedule'] == null ? null : ResourcePolicyInstanceSchedulePolicySchedule.fromMap((map['vmStopSchedule'] as Map).cast<String, dynamic>()),
    );
  }
}

