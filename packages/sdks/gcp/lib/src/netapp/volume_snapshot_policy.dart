// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_snapshot_policy_daily_schedule.dart';
import 'volume_snapshot_policy_hourly_schedule.dart';
import 'volume_snapshot_policy_monthly_schedule.dart';
import 'volume_snapshot_policy_weekly_schedule.dart';

class VolumeSnapshotPolicy {
  /// Daily schedule policy.
  /// Structure is documented below.
  final pulumi.Input<VolumeSnapshotPolicyDailySchedule>? dailySchedule;
  /// Enables automated snapshot creation according to defined schedule. Default is false.
  /// To disable automatic snapshot creation you have to remove the whole snapshot_policy block.
  final pulumi.Input<bool>? enabled;
  /// Hourly schedule policy.
  /// Structure is documented below.
  final pulumi.Input<VolumeSnapshotPolicyHourlySchedule>? hourlySchedule;
  /// Monthly schedule policy.
  /// Structure is documented below.
  final pulumi.Input<VolumeSnapshotPolicyMonthlySchedule>? monthlySchedule;
  /// Weekly schedule policy.
  /// Structure is documented below.
  final pulumi.Input<VolumeSnapshotPolicyWeeklySchedule>? weeklySchedule;

  /// Creates a new [VolumeSnapshotPolicy].
  /// [dailySchedule] Daily schedule policy.
  /// [enabled] Enables automated snapshot creation according to defined schedule. Default is false.
  /// [hourlySchedule] Hourly schedule policy.
  /// [monthlySchedule] Monthly schedule policy.
  /// [weeklySchedule] Weekly schedule policy.
  VolumeSnapshotPolicy({
    this.dailySchedule,
    this.enabled,
    this.hourlySchedule,
    this.monthlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<VolumeSnapshotPolicyDailySchedule, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'enabled': ?enabled,
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<VolumeSnapshotPolicyHourlySchedule, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'monthlySchedule': ?pulumi.Input.mapOptionalInputValue<VolumeSnapshotPolicyMonthlySchedule, Map<String, dynamic>>(monthlySchedule, (value) => value.toMap()),
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<VolumeSnapshotPolicyWeeklySchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory VolumeSnapshotPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotPolicy(
      dailySchedule: map['dailySchedule'] == null ? null : (VolumeSnapshotPolicyDailySchedule.fromMap((map['dailySchedule']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      hourlySchedule: map['hourlySchedule'] == null ? null : (VolumeSnapshotPolicyHourlySchedule.fromMap((map['hourlySchedule']! as Map).cast<String, dynamic>())).input(),
      monthlySchedule: map['monthlySchedule'] == null ? null : (VolumeSnapshotPolicyMonthlySchedule.fromMap((map['monthlySchedule']! as Map).cast<String, dynamic>())).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (VolumeSnapshotPolicyWeeklySchedule.fromMap((map['weeklySchedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

