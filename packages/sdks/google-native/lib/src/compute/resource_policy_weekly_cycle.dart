// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycle {
  /// Up to 7 intervals/windows, one for each day of the week.
  final pulumi.Input<List<ResourcePolicyWeeklyCycleDayOfWeek>>? dayOfWeeks;

  /// Creates a new [ResourcePolicyWeeklyCycle].
  /// [dayOfWeeks] Up to 7 intervals/windows, one for each day of the week.
  ResourcePolicyWeeklyCycle({
    this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeeks': ?pulumi.Input.mapOptionalInputValue<List<ResourcePolicyWeeklyCycleDayOfWeek>, List<Map<String, dynamic>>>(dayOfWeeks, (value) => pulumi.Input.encodeList<ResourcePolicyWeeklyCycleDayOfWeek, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourcePolicyWeeklyCycle.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycle(
      dayOfWeeks: (() { final guardedValue = map['dayOfWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourcePolicyWeeklyCycleDayOfWeek>(guardedValue, (value) => ResourcePolicyWeeklyCycleDayOfWeek.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

