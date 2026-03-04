// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_release_config_code_compilation_config.dart';
import 'repository_release_config_recent_scheduled_release_record.dart';

/// Input properties used for looking up and filtering RepositoryReleaseConfig resources.
class RepositoryReleaseConfigState {
  /// Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json.
  /// Structure is documented below.
  final pulumi.Input<RepositoryReleaseConfigCodeCompilationConfig>?
  codeCompilationConfig;

  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  final pulumi.Input<String>? cronSchedule;

  /// Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  final pulumi.Input<String>? gitCommitish;

  /// The release's name.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Records of the 10 most recent scheduled release attempts, ordered in in descending order of releaseTime. Updated whenever automatic creation of a compilation result is triggered by cronSchedule.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryReleaseConfigRecentScheduledReleaseRecord>>?
  recentScheduledReleaseRecords;

  /// A reference to the region
  final pulumi.Input<String>? region;

  /// A reference to the Dataform repository
  final pulumi.Input<String>? repository;

  /// Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [RepositoryReleaseConfigState].
  /// [codeCompilationConfig] Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json.
  /// [cronSchedule] Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  /// [gitCommitish] Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  /// [name] The release's name.
  /// [project] The ID of the project in which the resource belongs.
  /// [recentScheduledReleaseRecords] Records of the 10 most recent scheduled release attempts, ordered in in descending order of releaseTime. Updated whenever automatic creation of a compilation result is triggered by cronSchedule.
  /// [region] A reference to the region
  /// [repository] A reference to the Dataform repository
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  RepositoryReleaseConfigState({
    this.codeCompilationConfig,
    this.cronSchedule,
    this.gitCommitish,
    this.name,
    this.project,
    this.recentScheduledReleaseRecords,
    this.region,
    this.repository,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeCompilationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RepositoryReleaseConfigCodeCompilationConfig,
            Map<String, dynamic>
          >(codeCompilationConfig, (value) => value.toMap()),
      'cronSchedule': ?cronSchedule,
      'gitCommitish': ?gitCommitish,
      'name': ?name,
      'project': ?project,
      'recentScheduledReleaseRecords':
          ?pulumi.Input.mapOptionalInputValue<
            List<RepositoryReleaseConfigRecentScheduledReleaseRecord>,
            List<Map<String, dynamic>>
          >(
            recentScheduledReleaseRecords,
            (value) =>
                pulumi.Input.encodeList<
                  RepositoryReleaseConfigRecentScheduledReleaseRecord,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'repository': ?repository,
      'timeZone': ?timeZone,
    };
  }

  factory RepositoryReleaseConfigState.fromMap(Map<String, dynamic> map) {
    return RepositoryReleaseConfigState(
      codeCompilationConfig: (() {
        final guardedValue = map['codeCompilationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RepositoryReleaseConfigCodeCompilationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cronSchedule: (() {
        final guardedValue = map['cronSchedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gitCommitish: (() {
        final guardedValue = map['gitCommitish'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      recentScheduledReleaseRecords: (() {
        final guardedValue = map['recentScheduledReleaseRecords'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RepositoryReleaseConfigRecentScheduledReleaseRecord
          >(
            guardedValue,
            (value) =>
                RepositoryReleaseConfigRecentScheduledReleaseRecord.fromMap(
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
