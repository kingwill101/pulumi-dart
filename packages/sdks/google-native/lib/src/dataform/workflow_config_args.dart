// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_config.dart';

/// {@template pulumi_dataform_v1beta1_workflow_config_args_doc}
/// The set of arguments for WorkflowConfig.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_workflow_config_args_doc}
class WorkflowConfigArgs {
  /// Optional. Optional schedule (in cron format) for automatic execution of this workflow config.
  final pulumi.Input<String>? cronSchedule;
  /// Optional. If left unset, a default InvocationConfig will be used.
  final pulumi.Input<InvocationConfig>? invocationConfig;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// The name of the release config whose release_compilation_result should be executed. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  final pulumi.Input<String> releaseConfig;
  final pulumi.Input<String> repositoryId;
  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final pulumi.Input<String>? timeZone;
  /// Required. The ID to use for the workflow config, which will become the final component of the workflow config's resource name.
  final pulumi.Input<String> workflowConfigId;

  /// Creates a new [WorkflowConfigArgs].
  /// [cronSchedule] Optional. Optional schedule (in cron format) for automatic execution of this workflow config.
  /// [invocationConfig] Optional. If left unset, a default InvocationConfig will be used.
  /// [location] Optional.
  /// [project] Optional.
  /// [releaseConfig] The name of the release config whose release_compilation_result should be executed. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  /// [repositoryId] Required.
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  /// [workflowConfigId] Required. The ID to use for the workflow config, which will become the final component of the workflow config's resource name.
  WorkflowConfigArgs({
    this.cronSchedule,
    this.invocationConfig,
    this.location,
    this.project,
    required this.releaseConfig,
    required this.repositoryId,
    this.timeZone,
    required this.workflowConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronSchedule': ?cronSchedule,
      'invocationConfig': ?pulumi.Input.mapOptionalInputValue<InvocationConfig, Map<String, dynamic>>(invocationConfig, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'releaseConfig': releaseConfig,
      'repositoryId': repositoryId,
      'timeZone': ?timeZone,
      'workflowConfigId': workflowConfigId,
    };
  }

  factory WorkflowConfigArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowConfigArgs(
      cronSchedule: map['cronSchedule'] == null ? null : (map['cronSchedule'] as String).input(),
      invocationConfig: map['invocationConfig'] == null ? null : (InvocationConfig.fromMap((map['invocationConfig'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      releaseConfig: (map['releaseConfig'] as String).input(),
      repositoryId: (map['repositoryId'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      workflowConfigId: (map['workflowConfigId'] as String).input(),
    );
  }
}

