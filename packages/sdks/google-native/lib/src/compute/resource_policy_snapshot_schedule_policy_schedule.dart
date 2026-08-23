// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_daily_cycle.dart';
import 'resource_policy_hourly_cycle.dart';
import 'resource_policy_weekly_cycle.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicySchedule {
  final pulumi.Input<ResourcePolicyDailyCycle>? dailySchedule;
  final pulumi.Input<ResourcePolicyHourlyCycle>? hourlySchedule;
  final pulumi.Input<ResourcePolicyWeeklyCycle>? weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicySchedule].
  /// [dailySchedule] Optional.
  /// [hourlySchedule] Optional.
  /// [weeklySchedule] Optional.
  const ResourcePolicySnapshotSchedulePolicySchedule({
    this.dailySchedule,
    this.hourlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyDailyCycle, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyHourlyCycle, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyWeeklyCycle, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicySchedule.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySchedule(
      dailySchedule: (() { final guardedValue = map['dailySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyDailyCycle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hourlySchedule: (() { final guardedValue = map['hourlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyHourlyCycle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourcePolicyWeeklyCycle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
