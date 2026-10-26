// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_response.dart';
import 'execution_template_response.dart';

/// Result data returned by getSchedule.
class GetScheduleResult {
  /// Time the schedule was created.
  final String? createTime;
  /// Cron-tab formatted schedule by which the job will execute. Format: minute, hour, day of month, month, day of week, e.g. `0 0 * * WED` = every Wednesday More examples: https://crontab.guru/examples.html
  final String? cronSchedule;
  /// A brief description of this environment.
  final String? description;
  /// Display name used for UI purposes. Name can only contain alphanumeric characters, hyphens `-`, and underscores `_`.
  final String? displayName;
  /// Notebook Execution Template corresponding to this schedule.
  final ExecutionTemplateResponse? executionTemplate;
  /// The name of this schedule. Format: `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  final String? name;
  /// The most recent execution names triggered from this schedule and their corresponding states.
  final List<ExecutionResponse>? recentExecutions;
  final String? state;
  /// Timezone on which the cron_schedule. The value of this field must be a time zone name from the tz database. TZ Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  final String? timeZone;
  /// Time the schedule was last updated.
  final String? updateTime;

  /// Creates a new [GetScheduleResult].
  /// [createTime] Time the schedule was created.
  /// [cronSchedule] Cron-tab formatted schedule by which the job will execute. Format: minute, hour, day of month, month, day of week, e.g. `0 0 * * WED` = every Wednesday More examples: https://crontab.guru/examples.html
  /// [description] A brief description of this environment.
  /// [displayName] Display name used for UI purposes. Name can only contain alphanumeric characters, hyphens `-`, and underscores `_`.
  /// [executionTemplate] Notebook Execution Template corresponding to this schedule.
  /// [name] The name of this schedule. Format: `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  /// [recentExecutions] The most recent execution names triggered from this schedule and their corresponding states.
  /// [state] Optional.
  /// [timeZone] Timezone on which the cron_schedule. The value of this field must be a time zone name from the tz database. TZ Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  /// [updateTime] Time the schedule was last updated.
  const GetScheduleResult({
    this.createTime,
    this.cronSchedule,
    this.description,
    this.displayName,
    this.executionTemplate,
    this.name,
    this.recentExecutions,
    this.state,
    this.timeZone,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'cronSchedule': ?cronSchedule,
      'description': ?description,
      'displayName': ?displayName,
      'executionTemplate': ?executionTemplate?.toMap(),
      'name': ?name,
      'recentExecutions': ?(() { final guardedValue = recentExecutions; if (guardedValue == null) return null; return pulumi.Input.encodeList<ExecutionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'timeZone': ?timeZone,
      'updateTime': ?updateTime,
    };
  }

  factory GetScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetScheduleResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cronSchedule: (() { final guardedValue = map['cronSchedule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionTemplate: (() { final guardedValue = map['executionTemplate']; if (guardedValue == null) return null; return ExecutionTemplateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recentExecutions: (() { final guardedValue = map['recentExecutions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExecutionResponse>(guardedValue, (value) => ExecutionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
