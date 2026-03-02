// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week_compute_beta.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycleComputeBeta {
  /// Up to 7 intervals/windows, one for each day of the week.
  final pulumi.Input<List<ResourcePolicyWeeklyCycleDayOfWeekComputeBeta>>? dayOfWeeks;

  /// Creates a new [ResourcePolicyWeeklyCycleComputeBeta].
  /// [dayOfWeeks] Up to 7 intervals/windows, one for each day of the week.
  ResourcePolicyWeeklyCycleComputeBeta({
    this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeeks': ?pulumi.Input.mapOptionalInputValue<List<ResourcePolicyWeeklyCycleDayOfWeekComputeBeta>, List<Map<String, dynamic>>>(dayOfWeeks, (value) => pulumi.Input.encodeList<ResourcePolicyWeeklyCycleDayOfWeekComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourcePolicyWeeklyCycleComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleComputeBeta(
      dayOfWeeks: map['dayOfWeeks'] == null ? null : (pulumi.Input.decodeList<ResourcePolicyWeeklyCycleDayOfWeekComputeBeta>(map['dayOfWeeks'], (value) => ResourcePolicyWeeklyCycleDayOfWeekComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

