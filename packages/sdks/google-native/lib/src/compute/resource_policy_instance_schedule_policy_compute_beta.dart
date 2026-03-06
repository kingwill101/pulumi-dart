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
  const ResourcePolicyInstanceSchedulePolicyComputeBeta({
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
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmStartSchedule: (() { final guardedValue = map['vmStartSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmStopSchedule: (() { final guardedValue = map['vmStopSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

