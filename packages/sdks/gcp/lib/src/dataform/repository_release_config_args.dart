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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Disables automatic creation of compilation results.
  final pulumi.Input<bool>? disabled;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] Disables automatic creation of compilation results.
  /// [gitCommitish] Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository.
  /// [name] The release's name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  /// [repository] A reference to the Dataform repository
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  const RepositoryReleaseConfigArgs({
    this.codeCompilationConfig,
    this.cronSchedule,
    this.deletionPolicy,
    this.disabled,
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
      'deletionPolicy': ?deletionPolicy,
      'disabled': ?disabled,
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
      codeCompilationConfig: (() { final guardedValue = map['codeCompilationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryReleaseConfigCodeCompilationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cronSchedule: (() { final guardedValue = map['cronSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gitCommitish: pulumi.Input.fromValue(map['gitCommitish'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
