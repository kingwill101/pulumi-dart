// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week_day_compute_v1.dart';

class ResourcePolicyWeeklyCycleDayOfWeekComputeV1 {
  /// Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  final pulumi.Input<ResourcePolicyWeeklyCycleDayOfWeekDayComputeV1>? day;
  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ResourcePolicyWeeklyCycleDayOfWeekComputeV1].
  /// [day] Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  /// [startTime] Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  ResourcePolicyWeeklyCycleDayOfWeekComputeV1({
    this.day,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyWeeklyCycleDayOfWeekDayComputeV1, String>(day, (value) => value.value),
      'startTime': ?startTime,
    };
  }

  factory ResourcePolicyWeeklyCycleDayOfWeekComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleDayOfWeekComputeV1(
      day: map['day'] == null ? null : (ResourcePolicyWeeklyCycleDayOfWeekDayComputeV1.fromValue(map['day'] as String)).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

