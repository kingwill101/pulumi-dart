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
  final pulumi.Input<RepositoryWorkflowConfigInvocationConfig>?
  invocationConfig;

  /// The workflow's name.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Records of the 10 most recent scheduled execution attempts, ordered in in descending order of executionTime. Updated whenever automatic creation of a workflow invocation is triggered by cronSchedule.
  /// Structure is documented below.
  final pulumi.Input<
    List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>
  >?
  recentScheduledExecutionRecords;

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
      'invocationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RepositoryWorkflowConfigInvocationConfig,
            Map<String, dynamic>
          >(invocationConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'recentScheduledExecutionRecords':
          ?pulumi.Input.mapOptionalInputValue<
            List<RepositoryWorkflowConfigRecentScheduledExecutionRecord>,
            List<Map<String, dynamic>>
          >(
            recentScheduledExecutionRecords,
            (value) =>
                pulumi.Input.encodeList<
                  RepositoryWorkflowConfigRecentScheduledExecutionRecord,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'releaseConfig': ?releaseConfig,
      'repository': ?repository,
      'timeZone': ?timeZone,
    };
  }

  factory RepositoryWorkflowConfigState.fromMap(Map<String, dynamic> map) {
    return RepositoryWorkflowConfigState(
      cronSchedule: (() {
        final guardedValue = map['cronSchedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      invocationConfig: (() {
        final guardedValue = map['invocationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RepositoryWorkflowConfigInvocationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recentScheduledExecutionRecords: (() {
        final guardedValue = map['recentScheduledExecutionRecords'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RepositoryWorkflowConfigRecentScheduledExecutionRecord
          >(
            guardedValue,
            (value) =>
                RepositoryWorkflowConfigRecentScheduledExecutionRecord.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      releaseConfig: (() {
        final guardedValue = map['releaseConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repository: (() {
        final guardedValue = map['repository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
