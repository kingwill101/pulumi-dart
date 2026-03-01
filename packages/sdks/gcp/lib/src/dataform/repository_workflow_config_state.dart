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
    pulumi.Output<String>? cronSchedule,
    pulumi.Output<RepositoryWorkflowConfigInvocationConfig>? invocationConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>>? recentScheduledExecutionRecords,
    pulumi.Output<String>? region,
    pulumi.Output<String>? releaseConfig,
    pulumi.Output<String>? repository,
    pulumi.Output<String>? timeZone,
  }) :
      cronSchedule = pulumi.Input.asOptionalInput<String>(cronSchedule),
      invocationConfig = pulumi.Input.asOptionalInput<RepositoryWorkflowConfigInvocationConfig>(invocationConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      recentScheduledExecutionRecords = pulumi.Input.asOptionalInput<List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>>(recentScheduledExecutionRecords),
      region = pulumi.Input.asOptionalInput<String>(region),
      releaseConfig = pulumi.Input.asOptionalInput<String>(releaseConfig),
      repository = pulumi.Input.asOptionalInput<String>(repository),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

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
      cronSchedule: map['cronSchedule'] == null ? null : pulumi.Output.create<String>(map['cronSchedule'] as String),
      invocationConfig: map['invocationConfig'] == null ? null : pulumi.Output.create<RepositoryWorkflowConfigInvocationConfig>(RepositoryWorkflowConfigInvocationConfig.fromMap((map['invocationConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      recentScheduledExecutionRecords: map['recentScheduledExecutionRecords'] == null ? null : pulumi.Output.create<List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>>(pulumi.Input.decodeList<RepositoryWorkflowConfigRecentScheduledExecutionRecord>(map['recentScheduledExecutionRecords'], (value) => RepositoryWorkflowConfigRecentScheduledExecutionRecord.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      releaseConfig: map['releaseConfig'] == null ? null : pulumi.Output.create<String>(map['releaseConfig'] as String),
      repository: map['repository'] == null ? null : pulumi.Output.create<String>(map['repository'] as String),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

