// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week_response_compute_v1.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycleResponseComputeV1 {
  /// Up to 7 intervals/windows, one for each day of the week.
  final pulumi.Input<List<ResourcePolicyWeeklyCycleDayOfWeekResponseComputeV1>> dayOfWeeks;

  /// Creates a new [ResourcePolicyWeeklyCycleResponseComputeV1].
  /// [dayOfWeeks] Up to 7 intervals/windows, one for each day of the week.
  ResourcePolicyWeeklyCycleResponseComputeV1({
    required this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeeks': pulumi.Input.mapInputValue<List<ResourcePolicyWeeklyCycleDayOfWeekResponseComputeV1>, List<Map<String, dynamic>>>(dayOfWeeks, (value) => pulumi.Input.encodeList<ResourcePolicyWeeklyCycleDayOfWeekResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourcePolicyWeeklyCycleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleResponseComputeV1(
      dayOfWeeks: (pulumi.Input.decodeList<ResourcePolicyWeeklyCycleDayOfWeekResponseComputeV1>(map['dayOfWeeks'], (value) => ResourcePolicyWeeklyCycleDayOfWeekResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

