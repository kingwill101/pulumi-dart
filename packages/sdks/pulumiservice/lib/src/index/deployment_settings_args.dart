// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_settings_cache_options.dart';
import 'deployment_settings_executor_context.dart';
import 'deployment_settings_github.dart';
import 'deployment_settings_operation_context.dart';
import 'deployment_settings_source_context.dart';
import 'deployment_settings_vcs.dart';

/// {@template pulumi_index_deployment_settings_args_doc}
/// The set of arguments for DeploymentSettings.
/// {@endtemplate}
/// {@macro pulumi_index_deployment_settings_args_doc}
class DeploymentSettingsArgs {
  /// The agent pool identifier to use for the deployment.
  final pulumi.Input<String>? agentPoolId;
  /// Dependency cache settings for the deployment
  final pulumi.Input<DeploymentSettingsCacheOptions>? cacheOptions;
  /// Settings related to the deployment executor.
  final pulumi.Input<DeploymentSettingsExecutorContext>? executorContext;
  /// GitHub settings for the deployment.
  final pulumi.Input<DeploymentSettingsGithub>? github;
  /// Settings related to the Pulumi operation environment during the deployment.
  final pulumi.Input<DeploymentSettingsOperationContext>? operationContext;
  /// Organization name.
  final pulumi.Input<String> organization;
  /// Project name.
  final pulumi.Input<String> project;
  /// Settings related to the source of the deployment.
  final pulumi.Input<DeploymentSettingsSourceContext>? sourceContext;
  /// Stack name.
  final pulumi.Input<String> stack;
  /// VCS settings for the deployment. Supports Azure DevOps and GitHub via the 'provider' discriminator field.
  final pulumi.Input<DeploymentSettingsVcs>? vcs;

  /// Creates a new [DeploymentSettingsArgs].
  /// [agentPoolId] The agent pool identifier to use for the deployment.
  /// [cacheOptions] Dependency cache settings for the deployment
  /// [executorContext] Settings related to the deployment executor.
  /// [github] GitHub settings for the deployment.
  /// [operationContext] Settings related to the Pulumi operation environment during the deployment.
  /// [organization] Organization name.
  /// [project] Project name.
  /// [sourceContext] Settings related to the source of the deployment.
  /// [stack] Stack name.
  /// [vcs] VCS settings for the deployment. Supports Azure DevOps and GitHub via the 'provider' discriminator field.
  const DeploymentSettingsArgs({
    this.agentPoolId,
    this.cacheOptions,
    this.executorContext,
    this.github,
    this.operationContext,
    required this.organization,
    required this.project,
    this.sourceContext,
    required this.stack,
    this.vcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolId': ?agentPoolId,
      'cacheOptions': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsCacheOptions, Map<String, dynamic>>(cacheOptions, (value) => value.toMap()),
      'executorContext': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsExecutorContext, Map<String, dynamic>>(executorContext, (value) => value.toMap()),
      'github': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsGithub, Map<String, dynamic>>(github, (value) => value.toMap()),
      'operationContext': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsOperationContext, Map<String, dynamic>>(operationContext, (value) => value.toMap()),
      'organization': organization,
      'project': project,
      'sourceContext': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsSourceContext, Map<String, dynamic>>(sourceContext, (value) => value.toMap()),
      'stack': stack,
      'vcs': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsVcs, Map<String, dynamic>>(vcs, (value) => value.toMap()),
    };
  }

  factory DeploymentSettingsArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsArgs(
      agentPoolId: (() { final guardedValue = map['agentPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheOptions: (() { final guardedValue = map['cacheOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsCacheOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executorContext: (() { final guardedValue = map['executorContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsExecutorContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      github: (() { final guardedValue = map['github']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsGithub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operationContext: (() { final guardedValue = map['operationContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsOperationContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      sourceContext: (() { final guardedValue = map['sourceContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsSourceContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stack: pulumi.Input.fromValue(map['stack'] as String),
      vcs: (() { final guardedValue = map['vcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsVcs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
