// ignore_for_file: unused_element, unnecessary_cast

import 'hourly_schedule_response.dart';

/// Simple policy schedule.
class SimpleSchedulePolicyResponse {
  /// Hourly Schedule of this Policy
  final HourlyScheduleResponse? hourlySchedule;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'SimpleSchedulePolicy'.
  final String schedulePolicyType;
  /// List of days of week this schedule has to be run.
  final List<String>? scheduleRunDays;
  /// Frequency of the schedule operation of this policy.
  final String? scheduleRunFrequency;
  /// List of times of day this schedule has to be run.
  final List<String>? scheduleRunTimes;
  /// At every number weeks this schedule has to be run.
  final int? scheduleWeeklyFrequency;

  /// Creates a new [SimpleSchedulePolicyResponse].
  /// [hourlySchedule] Hourly Schedule of this Policy
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [scheduleRunDays] List of days of week this schedule has to be run.
  /// [scheduleRunFrequency] Frequency of the schedule operation of this policy.
  /// [scheduleRunTimes] List of times of day this schedule has to be run.
  /// [scheduleWeeklyFrequency] At every number weeks this schedule has to be run.
  SimpleSchedulePolicyResponse({
    this.hourlySchedule,
    required this.schedulePolicyType,
    this.scheduleRunDays,
    this.scheduleRunFrequency,
    this.scheduleRunTimes,
    this.scheduleWeeklyFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourlySchedule': ?hourlySchedule == null ? null : hourlySchedule!.toMap(),
      'schedulePolicyType': schedulePolicyType,
      'scheduleRunDays': ?scheduleRunDays,
      'scheduleRunFrequency': ?scheduleRunFrequency,
      'scheduleRunTimes': ?scheduleRunTimes,
      'scheduleWeeklyFrequency': ?scheduleWeeklyFrequency,
    };
  }

  factory SimpleSchedulePolicyResponse.fromMap(Map<String, dynamic> map) {
    return SimpleSchedulePolicyResponse(
      hourlySchedule: map['hourlySchedule'] == null ? null : HourlyScheduleResponse.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>()),
      schedulePolicyType: map['schedulePolicyType'] as String,
      scheduleRunDays: map['scheduleRunDays'] == null ? null : (map['scheduleRunDays'] as List).cast<String>(),
      scheduleRunFrequency: map['scheduleRunFrequency'] == null ? null : map['scheduleRunFrequency'] as String,
      scheduleRunTimes: map['scheduleRunTimes'] == null ? null : (map['scheduleRunTimes'] as List).cast<String>(),
      scheduleWeeklyFrequency: map['scheduleWeeklyFrequency'] == null ? null : map['scheduleWeeklyFrequency'] as int,
    );
  }
}

