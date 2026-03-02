// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week_day_compute_beta.dart';

class ResourcePolicyWeeklyCycleDayOfWeekComputeBeta {
  /// Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  final pulumi.Input<ResourcePolicyWeeklyCycleDayOfWeekDayComputeBeta>? day;
  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ResourcePolicyWeeklyCycleDayOfWeekComputeBeta].
  /// [day] Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  /// [startTime] Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  ResourcePolicyWeeklyCycleDayOfWeekComputeBeta({
    this.day,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyWeeklyCycleDayOfWeekDayComputeBeta, String>(day, (value) => value.value),
      'startTime': ?startTime,
    };
  }

  factory ResourcePolicyWeeklyCycleDayOfWeekComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleDayOfWeekComputeBeta(
      day: map['day'] == null ? null : (ResourcePolicyWeeklyCycleDayOfWeekDayComputeBeta.fromValue(map['day']! as String)).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
    );
  }
}

