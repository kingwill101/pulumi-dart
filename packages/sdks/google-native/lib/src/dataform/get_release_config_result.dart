// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_compilation_config_response.dart';
import 'scheduled_release_record_response.dart';

/// Result data returned by getReleaseConfig.
class GetReleaseConfigResult {
  /// Optional. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  final CodeCompilationConfigResponse? codeCompilationConfig;
  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  final String? cronSchedule;
  /// Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  final String? gitCommitish;
  /// The release config's name.
  final String? name;
  /// Records of the 10 most recent scheduled release attempts, ordered in in descending order of `release_time`. Updated whenever automatic creation of a compilation result is triggered by cron_schedule.
  final List<ScheduledReleaseRecordResponse>? recentScheduledReleaseRecords;
  /// Optional. The name of the currently released compilation result for this release config. This value is updated when a compilation result is created from this release config, or when this resource is updated by API call (perhaps to roll back to an earlier release). The compilation result must have been created using this release config. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final String? releaseCompilationResult;
  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final String? timeZone;

  /// Creates a new [GetReleaseConfigResult].
  /// [codeCompilationConfig] Optional. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  /// [cronSchedule] Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  /// [gitCommitish] Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  /// [name] The release config's name.
  /// [recentScheduledReleaseRecords] Records of the 10 most recent scheduled release attempts, ordered in in descending order of `release_time`. Updated whenever automatic creation of a compilation result is triggered by cron_schedule.
  /// [releaseCompilationResult] Optional. The name of the currently released compilation result for this release config. This value is updated when a compilation result is created from this release config, or when this resource is updated by API call (perhaps to roll back to an earlier release). The compilation result must have been created using this release config. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  const GetReleaseConfigResult({
    this.codeCompilationConfig,
    this.cronSchedule,
    this.gitCommitish,
    this.name,
    this.recentScheduledReleaseRecords,
    this.releaseCompilationResult,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeCompilationConfig': ?codeCompilationConfig?.toMap(),
      'cronSchedule': ?cronSchedule,
      'gitCommitish': ?gitCommitish,
      'name': ?name,
      'recentScheduledReleaseRecords': ?(() { final guardedValue = recentScheduledReleaseRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<ScheduledReleaseRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'releaseCompilationResult': ?releaseCompilationResult,
      'timeZone': ?timeZone,
    };
  }

  factory GetReleaseConfigResult.fromMap(Map<String, dynamic> map) {
    return GetReleaseConfigResult(
      codeCompilationConfig: (() { final guardedValue = map['codeCompilationConfig']; if (guardedValue == null) return null; return CodeCompilationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cronSchedule: (() { final guardedValue = map['cronSchedule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gitCommitish: (() { final guardedValue = map['gitCommitish']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recentScheduledReleaseRecords: (() { final guardedValue = map['recentScheduledReleaseRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScheduledReleaseRecordResponse>(guardedValue, (value) => ScheduledReleaseRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      releaseCompilationResult: (() { final guardedValue = map['releaseCompilationResult']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
