// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_daily_cycle_response_compute_v1.dart';
import 'resource_policy_hourly_cycle_response_compute_v1.dart';
import 'resource_policy_weekly_cycle_response_compute_v1.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1 {
  final pulumi.Input<ResourcePolicyDailyCycleResponseComputeV1> dailySchedule;
  final pulumi.Input<ResourcePolicyHourlyCycleResponseComputeV1> hourlySchedule;
  final pulumi.Input<ResourcePolicyWeeklyCycleResponseComputeV1> weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1].
  /// [dailySchedule] Required.
  /// [hourlySchedule] Required.
  /// [weeklySchedule] Required.
  ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1({
    required this.dailySchedule,
    required this.hourlySchedule,
    required this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': pulumi.Input.mapInputValue<ResourcePolicyDailyCycleResponseComputeV1, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'hourlySchedule': pulumi.Input.mapInputValue<ResourcePolicyHourlyCycleResponseComputeV1, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'weeklySchedule': pulumi.Input.mapInputValue<ResourcePolicyWeeklyCycleResponseComputeV1, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1(
      dailySchedule: pulumi.Input.fromValue(ResourcePolicyDailyCycleResponseComputeV1.fromMap((map['dailySchedule']! as Map).cast<String, dynamic>())),
      hourlySchedule: pulumi.Input.fromValue(ResourcePolicyHourlyCycleResponseComputeV1.fromMap((map['hourlySchedule']! as Map).cast<String, dynamic>())),
      weeklySchedule: pulumi.Input.fromValue(ResourcePolicyWeeklyCycleResponseComputeV1.fromMap((map['weeklySchedule']! as Map).cast<String, dynamic>())),
    );
  }
}

