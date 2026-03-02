// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_instance_schedule_policy_schedule_compute_beta.dart';

/// An InstanceSchedulePolicy specifies when and how frequent certain operations are performed on the instance.
class ResourcePolicyInstanceSchedulePolicyComputeBeta {
  /// The expiration time of the schedule. The timestamp is an RFC3339 string.
  final pulumi.Input<String>? expirationTime;
  /// The start time of the schedule. The timestamp is an RFC3339 string.
  final pulumi.Input<String>? startTime;
  /// Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  final pulumi.Input<String>? timeZone;
  /// Specifies the schedule for starting instances.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta>? vmStartSchedule;
  /// Specifies the schedule for stopping instances.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta>? vmStopSchedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyComputeBeta].
  /// [expirationTime] The expiration time of the schedule. The timestamp is an RFC3339 string.
  /// [startTime] The start time of the schedule. The timestamp is an RFC3339 string.
  /// [timeZone] Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  /// [vmStartSchedule] Specifies the schedule for starting instances.
  /// [vmStopSchedule] Specifies the schedule for stopping instances.
  ResourcePolicyInstanceSchedulePolicyComputeBeta({
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
      'vmStartSchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta, Map<String, dynamic>>(vmStartSchedule, (value) => value.toMap()),
      'vmStopSchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta, Map<String, dynamic>>(vmStopSchedule, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyInstanceSchedulePolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyComputeBeta(
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
      vmStartSchedule: map['vmStartSchedule'] == null ? null : (ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta.fromMap((map['vmStartSchedule']! as Map).cast<String, dynamic>())).input(),
      vmStopSchedule: map['vmStopSchedule'] == null ? null : (ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta.fromMap((map['vmStopSchedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

