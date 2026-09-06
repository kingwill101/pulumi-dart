// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_schedule.dart';
import 'hourly_schedule.dart';
import 'weekly_schedule.dart';

/// The V2 policy schedule for IaaS that supports hourly backups.
class SimpleSchedulePolicyV2 {
  /// Daily schedule of this policy
  final pulumi.Input<DailySchedule?>? dailySchedule;
  /// hourly schedule of this policy
  final pulumi.Input<HourlySchedule?>? hourlySchedule;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'SimpleSchedulePolicyV2'.
  final pulumi.Input<String> schedulePolicyType;
  /// Frequency of the schedule operation of this policy.
  final pulumi.Input<dynamic>? scheduleRunFrequency;
  /// Weekly schedule of this policy
  final pulumi.Input<WeeklySchedule?>? weeklySchedule;

  /// Creates a new [SimpleSchedulePolicyV2].
  /// [dailySchedule] Daily schedule of this policy
  /// [hourlySchedule] hourly schedule of this policy
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [scheduleRunFrequency] Frequency of the schedule operation of this policy.
  /// [weeklySchedule] Weekly schedule of this policy
  const SimpleSchedulePolicyV2({
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
      dailySchedule: (() { final guardedValue = map['dailySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DailySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hourlySchedule: (() { final guardedValue = map['hourlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HourlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulePolicyType: pulumi.Input.fromValue(map['schedulePolicyType'] as String),
      scheduleRunFrequency: (() { final guardedValue = map['scheduleRunFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WeeklySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
