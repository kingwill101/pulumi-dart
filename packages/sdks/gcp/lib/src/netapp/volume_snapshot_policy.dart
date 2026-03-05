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
      dailySchedule: (() { final guardedValue = map['dailySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeSnapshotPolicyDailySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hourlySchedule: (() { final guardedValue = map['hourlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeSnapshotPolicyHourlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monthlySchedule: (() { final guardedValue = map['monthlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeSnapshotPolicyMonthlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeSnapshotPolicyWeeklySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

