// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_workflow_config_invocation_config.dart';
import 'repository_workflow_config_recent_scheduled_execution_record.dart';

/// Input properties used for looking up and filtering RepositoryWorkflowConfig resources.
class RepositoryWorkflowConfigState {
  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  final pulumi.Input<String>? cronSchedule;
  /// Optional. If left unset, a default InvocationConfig will be used.
  /// Structure is documented below.
  final pulumi.Input<RepositoryWorkflowConfigInvocationConfig>? invocationConfig;
  /// The workflow's name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Records of the 10 most recent scheduled execution attempts, ordered in in descending order of executionTime. Updated whenever automatic creation of a workflow invocation is triggered by cronSchedule.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>>? recentScheduledExecutionRecords;
  /// A reference to the region
  final pulumi.Input<String>? region;
  /// The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.
  final pulumi.Input<String>? releaseConfig;
  /// A reference to the Dataform repository
  final pulumi.Input<String>? repository;
  /// Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [RepositoryWorkflowConfigState].
  /// [cronSchedule] Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  /// [invocationConfig] Optional. If left unset, a default InvocationConfig will be used.
  /// [name] The workflow's name.
  /// [project] The ID of the project in which the resource belongs.
  /// [recentScheduledExecutionRecords] Records of the 10 most recent scheduled execution attempts, ordered in in descending order of executionTime. Updated whenever automatic creation of a workflow invocation is triggered by cronSchedule.
  /// [region] A reference to the region
  /// [releaseConfig] The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.
  /// [repository] A reference to the Dataform repository
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  RepositoryWorkflowConfigState({
    this.cronSchedule,
    this.invocationConfig,
    this.name,
    this.project,
    this.recentScheduledExecutionRecords,
    this.region,
    this.releaseConfig,
    this.repository,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronSchedule': ?cronSchedule,
      'invocationConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryWorkflowConfigInvocationConfig, Map<String, dynamic>>(invocationConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'recentScheduledExecutionRecords': ?pulumi.Input.mapOptionalInputValue<List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>, List<Map<String, dynamic>>>(recentScheduledExecutionRecords, (value) => pulumi.Input.encodeList<RepositoryWorkflowConfigRecentScheduledExecutionRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'releaseConfig': ?releaseConfig,
      'repository': ?repository,
      'timeZone': ?timeZone,
    };
  }

  factory RepositoryWorkflowConfigState.fromMap(Map<String, dynamic> map) {
    return RepositoryWorkflowConfigState(
      cronSchedule: map['cronSchedule'] == null ? null : (map['cronSchedule'] as String).input(),
      invocationConfig: map['invocationConfig'] == null ? null : (RepositoryWorkflowConfigInvocationConfig.fromMap((map['invocationConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      recentScheduledExecutionRecords: map['recentScheduledExecutionRecords'] == null ? null : (pulumi.Input.decodeList<RepositoryWorkflowConfigRecentScheduledExecutionRecord>(map['recentScheduledExecutionRecords'], (value) => RepositoryWorkflowConfigRecentScheduledExecutionRecord.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      releaseConfig: map['releaseConfig'] == null ? null : (map['releaseConfig'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

