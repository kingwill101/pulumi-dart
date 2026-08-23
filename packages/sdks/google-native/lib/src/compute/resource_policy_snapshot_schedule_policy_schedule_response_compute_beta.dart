// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_daily_cycle_response_compute_beta.dart';
import 'resource_policy_hourly_cycle_response_compute_beta.dart';
import 'resource_policy_weekly_cycle_response_compute_beta.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta {
  final pulumi.Input<ResourcePolicyDailyCycleResponseComputeBeta> dailySchedule;
  final pulumi.Input<ResourcePolicyHourlyCycleResponseComputeBeta> hourlySchedule;
  final pulumi.Input<ResourcePolicyWeeklyCycleResponseComputeBeta> weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta].
  /// [dailySchedule] Required.
  /// [hourlySchedule] Required.
  /// [weeklySchedule] Required.
  const ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta({
    required this.dailySchedule,
    required this.hourlySchedule,
    required this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': pulumi.Input.mapInputValue<ResourcePolicyDailyCycleResponseComputeBeta, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'hourlySchedule': pulumi.Input.mapInputValue<ResourcePolicyHourlyCycleResponseComputeBeta, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'weeklySchedule': pulumi.Input.mapInputValue<ResourcePolicyWeeklyCycleResponseComputeBeta, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta(
      dailySchedule: pulumi.Input.fromValue(ResourcePolicyDailyCycleResponseComputeBeta.fromMap((map['dailySchedule']! as Map).cast<String, dynamic>())),
      hourlySchedule: pulumi.Input.fromValue(ResourcePolicyHourlyCycleResponseComputeBeta.fromMap((map['hourlySchedule']! as Map).cast<String, dynamic>())),
      weeklySchedule: pulumi.Input.fromValue(ResourcePolicyWeeklyCycleResponseComputeBeta.fromMap((map['weeklySchedule']! as Map).cast<String, dynamic>())),
    );
  }
}
