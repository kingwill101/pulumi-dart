// ignore_for_file: unused_element, unnecessary_cast

import 'service_level_indicator_response.dart';

/// Result data returned by getServiceLevelObjective.
class GetServiceLevelObjectiveResult {
  /// A calendar period, semantically "since the start of the current ". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
  final String calendarPeriod;

  /// Name used for UI elements listing this SLO.
  final String displayName;

  /// The fraction of service that must be good in order for this objective to be met. 0 &lt; goal &lt;= 0.999.
  final double goal;

  /// Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
  final String name;

  /// A rolling time period, semantically "in the past ". Must be an integer multiple of 1 day no larger than 30 days.
  final String rollingPeriod;

  /// The definition of good service, used to measure and calculate the quality of the Service's performance with respect to a single aspect of service quality.
  final ServiceLevelIndicatorResponse serviceLevelIndicator;

  /// Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  final Map<String, String> userLabels;

  /// Creates a new [GetServiceLevelObjectiveResult].
  /// [calendarPeriod] A calendar period, semantically "since the start of the current ". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
  /// [displayName] Name used for UI elements listing this SLO.
  /// [goal] The fraction of service that must be good in order for this objective to be met. 0 &lt; goal &lt;= 0.999.
  /// [name] Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
  /// [rollingPeriod] A rolling time period, semantically "in the past ". Must be an integer multiple of 1 day no larger than 30 days.
  /// [serviceLevelIndicator] The definition of good service, used to measure and calculate the quality of the Service's performance with respect to a single aspect of service quality.
  /// [userLabels] Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  GetServiceLevelObjectiveResult({
    required this.calendarPeriod,
    required this.displayName,
    required this.goal,
    required this.name,
    required this.rollingPeriod,
    required this.serviceLevelIndicator,
    required this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calendarPeriod': calendarPeriod,
      'displayName': displayName,
      'goal': goal,
      'name': name,
      'rollingPeriod': rollingPeriod,
      'serviceLevelIndicator': serviceLevelIndicator.toMap(),
      'userLabels': userLabels,
    };
  }

  factory GetServiceLevelObjectiveResult.fromMap(Map<String, dynamic> map) {
    return GetServiceLevelObjectiveResult(
      calendarPeriod: map['calendarPeriod'] as String,
      displayName: map['displayName'] as String,
      goal: map['goal'] as double,
      name: map['name'] as String,
      rollingPeriod: map['rollingPeriod'] as String,
      serviceLevelIndicator: ServiceLevelIndicatorResponse.fromMap(
        (map['serviceLevelIndicator']! as Map).cast<String, dynamic>(),
      ),
      userLabels: (map['userLabels'] as Map).cast<String, String>(),
    );
  }
}
