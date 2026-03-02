// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_release_config_code_compilation_config.dart';

/// {@template pulumi_dataform_repository_release_config_repository_release_config_args_doc}
/// The set of arguments for RepositoryReleaseConfig.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_release_config_repository_release_config_args_doc}
class RepositoryReleaseConfigArgs {
  /// Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json.
  /// Structure is documented below.
  final pulumi.Input<RepositoryReleaseConfigCodeCompilationConfig>? codeCompilationConfig;
  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  final pulumi.Input<String>? cronSchedule;
  /// Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  final pulumi.Input<String> gitCommitish;
  /// The release's name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the region
  final pulumi.Input<String>? region;
  /// A reference to the Dataform repository
  final pulumi.Input<String>? repository;
  /// Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [RepositoryReleaseConfigArgs].
  /// [codeCompilationConfig] Optional. If set, fields of codeCompilationConfig override the default compilation settings that are specified in dataform.json.
  /// [cronSchedule] Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  /// [gitCommitish] Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  /// [name] The release's name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  /// [repository] A reference to the Dataform repository
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  RepositoryReleaseConfigArgs({
    this.codeCompilationConfig,
    this.cronSchedule,
    required this.gitCommitish,
    this.name,
    this.project,
    this.region,
    this.repository,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeCompilationConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryReleaseConfigCodeCompilationConfig, Map<String, dynamic>>(codeCompilationConfig, (value) => value.toMap()),
      'cronSchedule': ?cronSchedule,
      'gitCommitish': gitCommitish,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'repository': ?repository,
      'timeZone': ?timeZone,
    };
  }

  factory RepositoryReleaseConfigArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryReleaseConfigArgs(
      codeCompilationConfig: map['codeCompilationConfig'] == null ? null : (RepositoryReleaseConfigCodeCompilationConfig.fromMap((map['codeCompilationConfig'] as Map).cast<String, dynamic>())).input(),
      cronSchedule: map['cronSchedule'] == null ? null : (map['cronSchedule'] as String).input(),
      gitCommitish: (map['gitCommitish'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

