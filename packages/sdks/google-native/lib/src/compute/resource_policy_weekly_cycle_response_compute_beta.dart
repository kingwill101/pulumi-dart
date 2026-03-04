// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week_response_compute_beta.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycleResponseComputeBeta {
  /// Up to 7 intervals/windows, one for each day of the week.
  final pulumi.Input<
    List<ResourcePolicyWeeklyCycleDayOfWeekResponseComputeBeta>
  >
  dayOfWeeks;

  /// Creates a new [ResourcePolicyWeeklyCycleResponseComputeBeta].
  /// [dayOfWeeks] Up to 7 intervals/windows, one for each day of the week.
  ResourcePolicyWeeklyCycleResponseComputeBeta({required this.dayOfWeeks});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeeks':
          pulumi.Input.mapInputValue<
            List<ResourcePolicyWeeklyCycleDayOfWeekResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            dayOfWeeks,
            (value) =>
                pulumi.Input.encodeList<
                  ResourcePolicyWeeklyCycleDayOfWeekResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ResourcePolicyWeeklyCycleResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyWeeklyCycleResponseComputeBeta(
      dayOfWeeks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          ResourcePolicyWeeklyCycleDayOfWeekResponseComputeBeta
        >(
          map['dayOfWeeks']!,
          (value) =>
              ResourcePolicyWeeklyCycleDayOfWeekResponseComputeBeta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
