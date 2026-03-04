// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_level_indicator.dart';
import 'service_level_objective_calendar_period.dart';

/// {@template pulumi_monitoring_v3_service_level_objective_args_doc}
/// The set of arguments for ServiceLevelObjective.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_service_level_objective_args_doc}
class ServiceLevelObjectiveArgs {
  /// A calendar period, semantically "since the start of the current ". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
  final pulumi.Input<ServiceLevelObjectiveCalendarPeriod>? calendarPeriod;

  /// Name used for UI elements listing this SLO.
  final pulumi.Input<String>? displayName;

  /// The fraction of service that must be good in order for this objective to be met. 0 &lt; goal &lt;= 0.999.
  final pulumi.Input<double>? goal;

  /// Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
  final pulumi.Input<String>? name;

  /// A rolling time period, semantically "in the past ". Must be an integer multiple of 1 day no larger than 30 days.
  final pulumi.Input<String>? rollingPeriod;
  final pulumi.Input<String> serviceId;

  /// The definition of good service, used to measure and calculate the quality of the Service's performance with respect to a single aspect of service quality.
  final pulumi.Input<ServiceLevelIndicator>? serviceLevelIndicator;

  /// Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. Must match the pattern ^[a-zA-Z0-9-_:.]+$
  final pulumi.Input<String>? serviceLevelObjectiveId;

  /// Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  final pulumi.Input<Map<String, String>>? userLabels;
  final pulumi.Input<String> v3Id;
  final pulumi.Input<String> v3Id1;

  /// Creates a new [ServiceLevelObjectiveArgs].
  /// [calendarPeriod] A calendar period, semantically "since the start of the current ". At this time, only DAY, WEEK, FORTNIGHT, and MONTH are supported.
  /// [displayName] Name used for UI elements listing this SLO.
  /// [goal] The fraction of service that must be good in order for this objective to be met. 0 &lt; goal &lt;= 0.999.
  /// [name] Resource name for this ServiceLevelObjective. The format is: projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
  /// [rollingPeriod] A rolling time period, semantically "in the past ". Must be an integer multiple of 1 day no larger than 30 days.
  /// [serviceId] Required.
  /// [serviceLevelIndicator] The definition of good service, used to measure and calculate the quality of the Service's performance with respect to a single aspect of service quality.
  /// [serviceLevelObjectiveId] Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective. If omitted, an id will be generated instead. Must match the pattern ^[a-zA-Z0-9-_:.]+$
  /// [userLabels] Labels which have been used to annotate the service-level objective. Label keys must start with a letter. Label keys and values may contain lowercase letters, numbers, underscores, and dashes. Label keys and values have a maximum length of 63 characters, and must be less than 128 bytes in size. Up to 64 label entries may be stored. For labels which do not have a semantic value, the empty string may be supplied for the label value.
  /// [v3Id] Required.
  /// [v3Id1] Required.
  ServiceLevelObjectiveArgs({
    this.calendarPeriod,
    this.displayName,
    this.goal,
    this.name,
    this.rollingPeriod,
    required this.serviceId,
    this.serviceLevelIndicator,
    this.serviceLevelObjectiveId,
    this.userLabels,
    required this.v3Id,
    required this.v3Id1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calendarPeriod':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceLevelObjectiveCalendarPeriod,
            String
          >(calendarPeriod, (value) => value.wireValue),
      'displayName': ?displayName,
      'goal': ?goal,
      'name': ?name,
      'rollingPeriod': ?rollingPeriod,
      'serviceId': serviceId,
      'serviceLevelIndicator':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceLevelIndicator,
            Map<String, dynamic>
          >(serviceLevelIndicator, (value) => value.toMap()),
      'serviceLevelObjectiveId': ?serviceLevelObjectiveId,
      'userLabels': ?userLabels,
      'v3Id': v3Id,
      'v3Id1': v3Id1,
    };
  }

  factory ServiceLevelObjectiveArgs.fromMap(Map<String, dynamic> map) {
    return ServiceLevelObjectiveArgs(
      calendarPeriod: (() {
        final guardedValue = map['calendarPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceLevelObjectiveCalendarPeriod.fromValue(guardedValue as String),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      goal: (() {
        final guardedValue = map['goal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rollingPeriod: (() {
        final guardedValue = map['rollingPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      serviceLevelIndicator: (() {
        final guardedValue = map['serviceLevelIndicator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceLevelIndicator.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceLevelObjectiveId: (() {
        final guardedValue = map['serviceLevelObjectiveId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userLabels: (() {
        final guardedValue = map['userLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      v3Id: pulumi.Input.fromValue(map['v3Id'] as String),
      v3Id1: pulumi.Input.fromValue(map['v3Id1'] as String),
    );
  }
}
