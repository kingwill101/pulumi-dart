// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_workflow_config_invocation_config.dart';

/// {@template pulumi_dataform_repository_workflow_config_repository_workflow_config_args_doc}
/// The set of arguments for RepositoryWorkflowConfig.
/// {@endtemplate}
/// {@macro pulumi_dataform_repository_workflow_config_repository_workflow_config_args_doc}
class RepositoryWorkflowConfigArgs {
  /// Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  final pulumi.Input<String>? cronSchedule;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Disables automatic creation of workflow invocations.
  final pulumi.Input<bool>? disabled;
  /// Optional. If left unset, a default InvocationConfig will be used.
  /// Structure is documented below.
  final pulumi.Input<RepositoryWorkflowConfigInvocationConfig>? invocationConfig;
  /// The workflow's name.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the region
  final pulumi.Input<String>? region;
  /// The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.
  final pulumi.Input<String> releaseConfig;
  /// A reference to the Dataform repository
  final pulumi.Input<String>? repository;
  /// Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [RepositoryWorkflowConfigArgs].
  /// [cronSchedule] Optional. Optional schedule (in cron format) for automatic creation of compilation results.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] Disables automatic creation of workflow invocations.
  /// [invocationConfig] Optional. If left unset, a default InvocationConfig will be used.
  /// [name] The workflow's name.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  /// [releaseConfig] The name of the release config whose releaseCompilationResult should be executed. Must be in the format projects/*/locations/*/repositories/*/releaseConfigs/*.
  /// [repository] A reference to the Dataform repository
  /// [timeZone] Optional. Specifies the time zone to be used when interpreting cronSchedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). If left unspecified, the default is UTC.
  const RepositoryWorkflowConfigArgs({
    this.cronSchedule,
    this.deletionPolicy,
    this.disabled,
    this.invocationConfig,
    this.name,
    this.project,
    this.region,
    required this.releaseConfig,
    this.repository,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronSchedule': ?cronSchedule,
      'deletionPolicy': ?deletionPolicy,
      'disabled': ?disabled,
      'invocationConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryWorkflowConfigInvocationConfig, Map<String, dynamic>>(invocationConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'releaseConfig': releaseConfig,
      'repository': ?repository,
      'timeZone': ?timeZone,
    };
  }

  factory RepositoryWorkflowConfigArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryWorkflowConfigArgs(
      cronSchedule: (() { final guardedValue = map['cronSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      invocationConfig: (() { final guardedValue = map['invocationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepositoryWorkflowConfigInvocationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseConfig: pulumi.Input.fromValue(map['releaseConfig'] as String),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
