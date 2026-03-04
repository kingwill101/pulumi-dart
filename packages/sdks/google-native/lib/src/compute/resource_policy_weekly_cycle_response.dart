// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_weekly_cycle_day_of_week_response.dart';

/// Time window specified for weekly operations.
class ResourcePolicyWeeklyCycleResponse {
  /// Up to 7 intervals/windows, one for each day of the week.
  final pulumi.Input<List<ResourcePolicyWeeklyCycleDayOfWeekResponse>>
  dayOfWeeks;

  /// Creates a new [ResourcePolicyWeeklyCycleResponse].
  /// [dayOfWeeks] Up to 7 intervals/windows, one for each day of the week.
  ResourcePolicyWeeklyCycleResponse({required this.dayOfWeeks});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeeks':
          pulumi.Input.mapInputValue<
            List<ResourcePolicyWeeklyCycleDayOfWeekResponse>,
            List<Map<String, dynamic>>
          >(
            dayOfWeeks,
            (value) =>
                pulumi.Input.encodeList<
                  ResourcePolicyWeeklyCycleDayOfWeekResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ResourcePolicyWeeklyCycleResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleResponse(
      dayOfWeeks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ResourcePolicyWeeklyCycleDayOfWeekResponse>(
          map['dayOfWeeks']!,
          (value) => ResourcePolicyWeeklyCycleDayOfWeekResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
