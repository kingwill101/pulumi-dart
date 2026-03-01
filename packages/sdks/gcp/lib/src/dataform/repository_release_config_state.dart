// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_release_config_code_compilation_config.dart';
import 'repository_release_config_recent_scheduled_release_record.dart';

/// Input properties used for looking up and filtering RepositoryReleaseConfig resources.
class RepositoryReleaseConfigState {
  /// Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json.
  /// Structure is documented below.
  final pulumi.Input<RepositoryReleaseConfigCodeCompilationConfig>? codeCompilationConfig;
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
  final pulumi.Input<List<RepositoryReleaseConfigRecentScheduledReleaseRecord>>? recentScheduledReleaseRecords;
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
    pulumi.Output<RepositoryReleaseConfigCodeCompilationConfig>? codeCompilationConfig,
    pulumi.Output<String>? cronSchedule,
    pulumi.Output<String>? gitCommitish,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<RepositoryReleaseConfigRecentScheduledReleaseRecord>>? recentScheduledReleaseRecords,
    pulumi.Output<String>? region,
    pulumi.Output<String>? repository,
    pulumi.Output<String>? timeZone,
  }) :
      codeCompilationConfig = pulumi.Input.asOptionalInput<RepositoryReleaseConfigCodeCompilationConfig>(codeCompilationConfig),
      cronSchedule = pulumi.Input.asOptionalInput<String>(cronSchedule),
      gitCommitish = pulumi.Input.asOptionalInput<String>(gitCommitish),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      recentScheduledReleaseRecords = pulumi.Input.asOptionalInput<List<RepositoryReleaseConfigRecentScheduledReleaseRecord>>(recentScheduledReleaseRecords),
      region = pulumi.Input.asOptionalInput<String>(region),
      repository = pulumi.Input.asOptionalInput<String>(repository),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeCompilationConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryReleaseConfigCodeCompilationConfig, Map<String, dynamic>>(codeCompilationConfig, (value) => value.toMap()),
      'cronSchedule': ?cronSchedule,
      'gitCommitish': ?gitCommitish,
      'name': ?name,
      'project': ?project,
      'recentScheduledReleaseRecords': ?pulumi.Input.mapOptionalInputValue<List<RepositoryReleaseConfigRecentScheduledReleaseRecord>, List<Map<String, dynamic>>>(recentScheduledReleaseRecords, (value) => pulumi.Input.encodeList<RepositoryReleaseConfigRecentScheduledReleaseRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'repository': ?repository,
      'timeZone': ?timeZone,
    };
  }

  factory RepositoryReleaseConfigState.fromMap(Map<String, dynamic> map) {
    return RepositoryReleaseConfigState(
      codeCompilationConfig: map['codeCompilationConfig'] == null ? null : pulumi.Output.create<RepositoryReleaseConfigCodeCompilationConfig>(RepositoryReleaseConfigCodeCompilationConfig.fromMap((map['codeCompilationConfig'] as Map).cast<String, dynamic>())),
      cronSchedule: map['cronSchedule'] == null ? null : pulumi.Output.create<String>(map['cronSchedule'] as String),
      gitCommitish: map['gitCommitish'] == null ? null : pulumi.Output.create<String>(map['gitCommitish'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      recentScheduledReleaseRecords: map['recentScheduledReleaseRecords'] == null ? null : pulumi.Output.create<List<RepositoryReleaseConfigRecentScheduledReleaseRecord>>(pulumi.Input.decodeList<RepositoryReleaseConfigRecentScheduledReleaseRecord>(map['recentScheduledReleaseRecords'], (value) => RepositoryReleaseConfigRecentScheduledReleaseRecord.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repository: map['repository'] == null ? null : pulumi.Output.create<String>(map['repository'] as String),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

