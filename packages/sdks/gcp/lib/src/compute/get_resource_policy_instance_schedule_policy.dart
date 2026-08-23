// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_policy_instance_schedule_policy_vm_start_schedule.dart';
import 'get_resource_policy_instance_schedule_policy_vm_stop_schedule.dart';

class GetResourcePolicyInstanceSchedulePolicy {
  /// The expiration time of the schedule. The timestamp is an RFC3339 string.
  final pulumi.Input<String> expirationTime;
  /// The start time of the schedule. The timestamp is an RFC3339 string.
  final pulumi.Input<String> startTime;
  /// Specifies the time zone to be used in interpreting the schedule. The value of this field must be a time zone name
  /// from the tz database: http://en.wikipedia.org/wiki/Tz_database.
  final pulumi.Input<String> timeZone;
  /// Specifies the schedule for starting instances.
  final pulumi.Input<List<GetResourcePolicyInstanceSchedulePolicyVmStartSchedule>> vmStartSchedules;
  /// Specifies the schedule for stopping instances.
  final pulumi.Input<List<GetResourcePolicyInstanceSchedulePolicyVmStopSchedule>> vmStopSchedules;

  /// Creates a new [GetResourcePolicyInstanceSchedulePolicy].
  /// [expirationTime] The expiration time of the schedule. The timestamp is an RFC3339 string.
  /// [startTime] The start time of the schedule. The timestamp is an RFC3339 string.
  /// [timeZone] Specifies the time zone to be used in interpreting the schedule. The value of this field must be a time zone name
  /// [vmStartSchedules] Specifies the schedule for starting instances.
  /// [vmStopSchedules] Specifies the schedule for stopping instances.
  const GetResourcePolicyInstanceSchedulePolicy({
    required this.expirationTime,
    required this.startTime,
    required this.timeZone,
    required this.vmStartSchedules,
    required this.vmStopSchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': expirationTime,
      'startTime': startTime,
      'timeZone': timeZone,
      'vmStartSchedules': pulumi.Input.mapInputValue<List<GetResourcePolicyInstanceSchedulePolicyVmStartSchedule>, List<Map<String, dynamic>>>(vmStartSchedules, (value) => pulumi.Input.encodeList<GetResourcePolicyInstanceSchedulePolicyVmStartSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmStopSchedules': pulumi.Input.mapInputValue<List<GetResourcePolicyInstanceSchedulePolicyVmStopSchedule>, List<Map<String, dynamic>>>(vmStopSchedules, (value) => pulumi.Input.encodeList<GetResourcePolicyInstanceSchedulePolicyVmStopSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetResourcePolicyInstanceSchedulePolicy.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyInstanceSchedulePolicy(
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
      vmStartSchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetResourcePolicyInstanceSchedulePolicyVmStartSchedule>(map['vmStartSchedules']!, (value) => GetResourcePolicyInstanceSchedulePolicyVmStartSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      vmStopSchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetResourcePolicyInstanceSchedulePolicyVmStopSchedule>(map['vmStopSchedules']!, (value) => GetResourcePolicyInstanceSchedulePolicyVmStopSchedule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
