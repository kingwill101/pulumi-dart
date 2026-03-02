// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_schedule.dart';
import 'hourly_schedule.dart';
import 'weekly_schedule.dart';

/// The V2 policy schedule for IaaS that supports hourly backups.
class SimpleSchedulePolicyV2 {
  /// Daily schedule of this policy
  final pulumi.Input<DailySchedule>? dailySchedule;
  /// hourly schedule of this policy
  final pulumi.Input<HourlySchedule>? hourlySchedule;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'SimpleSchedulePolicyV2'.
  final pulumi.Input<String> schedulePolicyType;
  /// Frequency of the schedule operation of this policy.
  final pulumi.Input<String>? scheduleRunFrequency;
  /// Weekly schedule of this policy
  final pulumi.Input<WeeklySchedule>? weeklySchedule;

  /// Creates a new [SimpleSchedulePolicyV2].
  /// [dailySchedule] Daily schedule of this policy
  /// [hourlySchedule] hourly schedule of this policy
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [scheduleRunFrequency] Frequency of the schedule operation of this policy.
  /// [weeklySchedule] Weekly schedule of this policy
  SimpleSchedulePolicyV2({
    this.dailySchedule,
    this.hourlySchedule,
    required this.schedulePolicyType,
    this.scheduleRunFrequency,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<DailySchedule, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<HourlySchedule, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'schedulePolicyType': schedulePolicyType,
      'scheduleRunFrequency': ?scheduleRunFrequency,
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<WeeklySchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory SimpleSchedulePolicyV2.fromMap(Map<String, dynamic> map) {
    return SimpleSchedulePolicyV2(
      dailySchedule: map['dailySchedule'] == null ? null : (DailySchedule.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>())).input(),
      hourlySchedule: map['hourlySchedule'] == null ? null : (HourlySchedule.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>())).input(),
      schedulePolicyType: (map['schedulePolicyType'] as String).input(),
      scheduleRunFrequency: map['scheduleRunFrequency'] == null ? null : (map['scheduleRunFrequency'] as String).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (WeeklySchedule.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

