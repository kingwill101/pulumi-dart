// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_instance_schedule_policy_schedule_response_compute_beta.dart';

/// An InstanceSchedulePolicy specifies when and how frequent certain operations are performed on the instance.
class ResourcePolicyInstanceSchedulePolicyResponseComputeBeta {
  /// The expiration time of the schedule. The timestamp is an RFC3339 string.
  final pulumi.Input<String> expirationTime;
  /// The start time of the schedule. The timestamp is an RFC3339 string.
  final pulumi.Input<String> startTime;
  /// Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  final pulumi.Input<String> timeZone;
  /// Specifies the schedule for starting instances.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta> vmStartSchedule;
  /// Specifies the schedule for stopping instances.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta> vmStopSchedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyResponseComputeBeta].
  /// [expirationTime] The expiration time of the schedule. The timestamp is an RFC3339 string.
  /// [startTime] The start time of the schedule. The timestamp is an RFC3339 string.
  /// [timeZone] Specifies the time zone to be used in interpreting Schedule.schedule. The value of this field must be a time zone name from the tz database: https://wikipedia.org/wiki/Tz_database.
  /// [vmStartSchedule] Specifies the schedule for starting instances.
  /// [vmStopSchedule] Specifies the schedule for stopping instances.
  const ResourcePolicyInstanceSchedulePolicyResponseComputeBeta({
    required this.expirationTime,
    required this.startTime,
    required this.timeZone,
    required this.vmStartSchedule,
    required this.vmStopSchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': expirationTime,
      'startTime': startTime,
      'timeZone': timeZone,
      'vmStartSchedule': pulumi.Input.mapInputValue<ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta, Map<String, dynamic>>(vmStartSchedule, (value) => value.toMap()),
      'vmStopSchedule': pulumi.Input.mapInputValue<ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta, Map<String, dynamic>>(vmStopSchedule, (value) => value.toMap()),
    };
  }

  factory ResourcePolicyInstanceSchedulePolicyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyResponseComputeBeta(
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
      vmStartSchedule: pulumi.Input.fromValue(ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta.fromMap((map['vmStartSchedule']! as Map).cast<String, dynamic>())),
      vmStopSchedule: pulumi.Input.fromValue(ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta.fromMap((map['vmStopSchedule']! as Map).cast<String, dynamic>())),
    );
  }
}
