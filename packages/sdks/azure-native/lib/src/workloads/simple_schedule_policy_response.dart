// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hourly_schedule_response.dart';

/// Simple policy schedule.
class SimpleSchedulePolicyResponse {
  /// Hourly Schedule of this Policy
  final pulumi.Input<HourlyScheduleResponse>? hourlySchedule;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'SimpleSchedulePolicy'.
  final pulumi.Input<String> schedulePolicyType;
  /// List of days of week this schedule has to be run.
  final pulumi.Input<List<String>>? scheduleRunDays;
  /// Frequency of the schedule operation of this policy.
  final pulumi.Input<String>? scheduleRunFrequency;
  /// List of times of day this schedule has to be run.
  final pulumi.Input<List<String>>? scheduleRunTimes;
  /// At every number weeks this schedule has to be run.
  final pulumi.Input<int>? scheduleWeeklyFrequency;

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
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<HourlyScheduleResponse, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'schedulePolicyType': schedulePolicyType,
      'scheduleRunDays': ?scheduleRunDays,
      'scheduleRunFrequency': ?scheduleRunFrequency,
      'scheduleRunTimes': ?scheduleRunTimes,
      'scheduleWeeklyFrequency': ?scheduleWeeklyFrequency,
    };
  }

  factory SimpleSchedulePolicyResponse.fromMap(Map<String, dynamic> map) {
    return SimpleSchedulePolicyResponse(
      hourlySchedule: map['hourlySchedule'] == null ? null : (HourlyScheduleResponse.fromMap((map['hourlySchedule']! as Map).cast<String, dynamic>())).input(),
      schedulePolicyType: (map['schedulePolicyType'] as String).input(),
      scheduleRunDays: map['scheduleRunDays'] == null ? null : ((map['scheduleRunDays']! as List).cast<String>()).input(),
      scheduleRunFrequency: map['scheduleRunFrequency'] == null ? null : (map['scheduleRunFrequency']! as String).input(),
      scheduleRunTimes: map['scheduleRunTimes'] == null ? null : ((map['scheduleRunTimes']! as List).cast<String>()).input(),
      scheduleWeeklyFrequency: map['scheduleWeeklyFrequency'] == null ? null : (map['scheduleWeeklyFrequency']! as int).input(),
    );
  }
}

