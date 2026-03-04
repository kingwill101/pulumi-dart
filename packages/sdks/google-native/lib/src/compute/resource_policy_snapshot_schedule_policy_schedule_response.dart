// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_daily_cycle_response.dart';
import 'resource_policy_hourly_cycle_response.dart';
import 'resource_policy_weekly_cycle_response.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleResponse {
  final pulumi.Input<ResourcePolicyDailyCycleResponse> dailySchedule;
  final pulumi.Input<ResourcePolicyHourlyCycleResponse> hourlySchedule;
  final pulumi.Input<ResourcePolicyWeeklyCycleResponse> weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleResponse].
  /// [dailySchedule] Required.
  /// [hourlySchedule] Required.
  /// [weeklySchedule] Required.
  ResourcePolicySnapshotSchedulePolicyScheduleResponse({
    required this.dailySchedule,
    required this.hourlySchedule,
    required this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule':
          pulumi.Input.mapInputValue<
            ResourcePolicyDailyCycleResponse,
            Map<String, dynamic>
          >(dailySchedule, (value) => value.toMap()),
      'hourlySchedule':
          pulumi.Input.mapInputValue<
            ResourcePolicyHourlyCycleResponse,
            Map<String, dynamic>
          >(hourlySchedule, (value) => value.toMap()),
      'weeklySchedule':
          pulumi.Input.mapInputValue<
            ResourcePolicyWeeklyCycleResponse,
            Map<String, dynamic>
          >(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyScheduleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicySnapshotSchedulePolicyScheduleResponse(
      dailySchedule: pulumi.Input.fromValue(
        ResourcePolicyDailyCycleResponse.fromMap(
          (map['dailySchedule']! as Map).cast<String, dynamic>(),
        ),
      ),
      hourlySchedule: pulumi.Input.fromValue(
        ResourcePolicyHourlyCycleResponse.fromMap(
          (map['hourlySchedule']! as Map).cast<String, dynamic>(),
        ),
      ),
      weeklySchedule: pulumi.Input.fromValue(
        ResourcePolicyWeeklyCycleResponse.fromMap(
          (map['weeklySchedule']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
