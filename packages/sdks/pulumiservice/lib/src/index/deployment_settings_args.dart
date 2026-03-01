// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_settings_cache_options.dart';
import 'deployment_settings_executor_context.dart';
import 'deployment_settings_github.dart';
import 'deployment_settings_operation_context.dart';
import 'deployment_settings_source_context.dart';

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
  DeploymentSettingsArgs({
    pulumi.Output<String>? agentPoolId,
    pulumi.Output<DeploymentSettingsCacheOptions>? cacheOptions,
    pulumi.Output<DeploymentSettingsExecutorContext>? executorContext,
    pulumi.Output<DeploymentSettingsGithub>? github,
    pulumi.Output<DeploymentSettingsOperationContext>? operationContext,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> project,
    pulumi.Output<DeploymentSettingsSourceContext>? sourceContext,
    required pulumi.Output<String> stack,
  }) :
      agentPoolId = pulumi.Input.asOptionalInput<String>(agentPoolId),
      cacheOptions = pulumi.Input.asOptionalInput<DeploymentSettingsCacheOptions>(cacheOptions),
      executorContext = pulumi.Input.asOptionalInput<DeploymentSettingsExecutorContext>(executorContext),
      github = pulumi.Input.asOptionalInput<DeploymentSettingsGithub>(github),
      operationContext = pulumi.Input.asOptionalInput<DeploymentSettingsOperationContext>(operationContext),
      organization = pulumi.Input.asInput<String>(organization),
      project = pulumi.Input.asInput<String>(project),
      sourceContext = pulumi.Input.asOptionalInput<DeploymentSettingsSourceContext>(sourceContext),
      stack = pulumi.Input.asInput<String>(stack);

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
    };
  }

  factory DeploymentSettingsArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsArgs(
      agentPoolId: map['agentPoolId'] == null ? null : pulumi.Output.create<String>(map['agentPoolId'] as String),
      cacheOptions: map['cacheOptions'] == null ? null : pulumi.Output.create<DeploymentSettingsCacheOptions>(DeploymentSettingsCacheOptions.fromMap((map['cacheOptions'] as Map).cast<String, dynamic>())),
      executorContext: map['executorContext'] == null ? null : pulumi.Output.create<DeploymentSettingsExecutorContext>(DeploymentSettingsExecutorContext.fromMap((map['executorContext'] as Map).cast<String, dynamic>())),
      github: map['github'] == null ? null : pulumi.Output.create<DeploymentSettingsGithub>(DeploymentSettingsGithub.fromMap((map['github'] as Map).cast<String, dynamic>())),
      operationContext: map['operationContext'] == null ? null : pulumi.Output.create<DeploymentSettingsOperationContext>(DeploymentSettingsOperationContext.fromMap((map['operationContext'] as Map).cast<String, dynamic>())),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      project: pulumi.Output.create<String>(map['project'] as String),
      sourceContext: map['sourceContext'] == null ? null : pulumi.Output.create<DeploymentSettingsSourceContext>(DeploymentSettingsSourceContext.fromMap((map['sourceContext'] as Map).cast<String, dynamic>())),
      stack: pulumi.Output.create<String>(map['stack'] as String),
    );
  }
}

