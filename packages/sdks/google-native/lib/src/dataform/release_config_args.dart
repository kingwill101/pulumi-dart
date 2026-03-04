// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_compilation_config.dart';

/// {@template pulumi_dataform_v1beta1_release_config_args_doc}
/// The set of arguments for ReleaseConfig.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_release_config_args_doc}
class ReleaseConfigArgs {
  /// Optional. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  final pulumi.Input<CodeCompilationConfig>? codeCompilationConfig;

  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  final pulumi.Input<String>? cronSchedule;

  /// Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  final pulumi.Input<String> gitCommitish;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. The name of the currently released compilation result for this release config. This value is updated when a compilation result is created from this release config, or when this resource is updated by API call (perhaps to roll back to an earlier release). The compilation result must have been created using this release config. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final pulumi.Input<String>? releaseCompilationResult;

  /// Required. The ID to use for the release config, which will become the final component of the release config's resource name.
  final pulumi.Input<String> releaseConfigId;
  final pulumi.Input<String> repositoryId;

  /// Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [ReleaseConfigArgs].
  /// [codeCompilationConfig] Optional. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  /// [cronSchedule] Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  /// [gitCommitish] Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  /// [location] Optional.
  /// [project] Optional.
  /// [releaseCompilationResult] Optional. The name of the currently released compilation result for this release config. This value is updated when a compilation result is created from this release config, or when this resource is updated by API call (perhaps to roll back to an earlier release). The compilation result must have been created using this release config. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  /// [releaseConfigId] Required. The ID to use for the release config, which will become the final component of the release config's resource name.
  /// [repositoryId] Required.
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  ReleaseConfigArgs({
    this.codeCompilationConfig,
    this.cronSchedule,
    required this.gitCommitish,
    this.location,
    this.project,
    this.releaseCompilationResult,
    required this.releaseConfigId,
    required this.repositoryId,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeCompilationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CodeCompilationConfig,
            Map<String, dynamic>
          >(codeCompilationConfig, (value) => value.toMap()),
      'cronSchedule': ?cronSchedule,
      'gitCommitish': gitCommitish,
      'location': ?location,
      'project': ?project,
      'releaseCompilationResult': ?releaseCompilationResult,
      'releaseConfigId': releaseConfigId,
      'repositoryId': repositoryId,
      'timeZone': ?timeZone,
    };
  }

  factory ReleaseConfigArgs.fromMap(Map<String, dynamic> map) {
    return ReleaseConfigArgs(
      codeCompilationConfig: (() {
        final guardedValue = map['codeCompilationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CodeCompilationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cronSchedule: (() {
        final guardedValue = map['cronSchedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gitCommitish: pulumi.Input.fromValue(map['gitCommitish'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      releaseCompilationResult: (() {
        final guardedValue = map['releaseCompilationResult'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      releaseConfigId: pulumi.Input.fromValue(map['releaseConfigId'] as String),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
