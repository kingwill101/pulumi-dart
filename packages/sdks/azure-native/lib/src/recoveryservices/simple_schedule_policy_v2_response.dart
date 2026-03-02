// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daily_schedule_response.dart';
import 'hourly_schedule_response.dart';
import 'weekly_schedule_response.dart';

/// The V2 policy schedule for IaaS that supports hourly backups.
class SimpleSchedulePolicyV2Response {
  /// Daily schedule of this policy
  final pulumi.Input<DailyScheduleResponse>? dailySchedule;
  /// hourly schedule of this policy
  final pulumi.Input<HourlyScheduleResponse>? hourlySchedule;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'SimpleSchedulePolicyV2'.
  final pulumi.Input<String> schedulePolicyType;
  /// Frequency of the schedule operation of this policy.
  final pulumi.Input<String>? scheduleRunFrequency;
  /// Weekly schedule of this policy
  final pulumi.Input<WeeklyScheduleResponse>? weeklySchedule;

  /// Creates a new [SimpleSchedulePolicyV2Response].
  /// [dailySchedule] Daily schedule of this policy
  /// [hourlySchedule] hourly schedule of this policy
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [scheduleRunFrequency] Frequency of the schedule operation of this policy.
  /// [weeklySchedule] Weekly schedule of this policy
  SimpleSchedulePolicyV2Response({
    this.dailySchedule,
    this.hourlySchedule,
    required this.schedulePolicyType,
    this.scheduleRunFrequency,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<DailyScheduleResponse, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<HourlyScheduleResponse, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'schedulePolicyType': schedulePolicyType,
      'scheduleRunFrequency': ?scheduleRunFrequency,
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<WeeklyScheduleResponse, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory SimpleSchedulePolicyV2Response.fromMap(Map<String, dynamic> map) {
    return SimpleSchedulePolicyV2Response(
      dailySchedule: map['dailySchedule'] == null ? null : (DailyScheduleResponse.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>())).input(),
      hourlySchedule: map['hourlySchedule'] == null ? null : (HourlyScheduleResponse.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>())).input(),
      schedulePolicyType: (map['schedulePolicyType'] as String).input(),
      scheduleRunFrequency: map['scheduleRunFrequency'] == null ? null : (map['scheduleRunFrequency'] as String).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (WeeklyScheduleResponse.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

