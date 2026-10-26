// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_config_response.dart';
import 'scheduled_execution_record_response.dart';

/// Result data returned by getWorkflowConfig.
class GetWorkflowConfigResult {
  /// Optional. Optional schedule (in cron format) for automatic execution of this workflow config.
  final String? cronSchedule;
  /// Optional. If left unset, a default InvocationConfig will be used.
  final InvocationConfigResponse? invocationConfig;
  /// The workflow config's name.
  final String? name;
  /// Records of the 10 most recent scheduled execution attempts, ordered in in descending order of `execution_time`. Updated whenever automatic creation of a workflow invocation is triggered by cron_schedule.
  final List<ScheduledExecutionRecordResponse>? recentScheduledExecutionRecords;
  /// The name of the release config whose release_compilation_result should be executed. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  final String? releaseConfig;
  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final String? timeZone;

  /// Creates a new [GetWorkflowConfigResult].
  /// [cronSchedule] Optional. Optional schedule (in cron format) for automatic execution of this workflow config.
  /// [invocationConfig] Optional. If left unset, a default InvocationConfig will be used.
  /// [name] The workflow config's name.
  /// [recentScheduledExecutionRecords] Records of the 10 most recent scheduled execution attempts, ordered in in descending order of `execution_time`. Updated whenever automatic creation of a workflow invocation is triggered by cron_schedule.
  /// [releaseConfig] The name of the release config whose release_compilation_result should be executed. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  const GetWorkflowConfigResult({
    this.cronSchedule,
    this.invocationConfig,
    this.name,
    this.recentScheduledExecutionRecords,
    this.releaseConfig,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronSchedule': ?cronSchedule,
      'invocationConfig': ?invocationConfig?.toMap(),
      'name': ?name,
      'recentScheduledExecutionRecords': ?(() { final guardedValue = recentScheduledExecutionRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<ScheduledExecutionRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'releaseConfig': ?releaseConfig,
      'timeZone': ?timeZone,
    };
  }

  factory GetWorkflowConfigResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowConfigResult(
      cronSchedule: (() { final guardedValue = map['cronSchedule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invocationConfig: (() { final guardedValue = map['invocationConfig']; if (guardedValue == null) return null; return InvocationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recentScheduledExecutionRecords: (() { final guardedValue = map['recentScheduledExecutionRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScheduledExecutionRecordResponse>(guardedValue, (value) => ScheduledExecutionRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      releaseConfig: (() { final guardedValue = map['releaseConfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
