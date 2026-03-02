// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_instance_schedule_policy_schedule.dart';

/// An InstanceSchedulePolicy specifies when and how frequent certain operations are performed on the instance.
class ResourcePolicyInstanceSchedulePolicy {
  /// The expiration time of the schedule. The timestamp is an RFC3339 string.
  final pulumi.Input<String>? expirationTime;
  /// The start time of the schedule. The timestamp is an RFC3339 string.
  final pulumi.Input<String>? startTime;
  /// Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  final pulumi.Input<String>? timeZone;
  /// Specifies the schedule for starting instances.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicySchedule>? vmStartSchedule;
  /// Specifies the schedule for stopping instances.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicySchedule>? vmStopSchedule;

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
      'vmStartSchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyInstanceSchedulePolicySchedule, Map<String, dynamic>>(vmStartSchedule, (value) => value.toMap()),
      'vmStopSchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyInstanceSchedulePolicySchedule, Map<String, dynamic>>(vmStopSchedule, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyInstanceSchedulePolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicy(
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
      vmStartSchedule: map['vmStartSchedule'] == null ? null : (ResourcePolicyInstanceSchedulePolicySchedule.fromMap((map['vmStartSchedule']! as Map).cast<String, dynamic>())).input(),
      vmStopSchedule: map['vmStopSchedule'] == null ? null : (ResourcePolicyInstanceSchedulePolicySchedule.fromMap((map['vmStopSchedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

