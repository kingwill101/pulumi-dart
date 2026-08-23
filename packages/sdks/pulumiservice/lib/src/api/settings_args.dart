// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_deployments_settings_args_doc}
/// The set of arguments for Settings.
/// {@endtemplate}
/// {@macro pulumi_api_deployments_settings_args_doc}
class SettingsArgs {
  /// The identifier of the agent pool to use for deployments.
  final pulumi.Input<String>? agentPoolID;
  /// Cache options for the deployment.
  final pulumi.Input<dynamic>? cacheOptions;
  /// The executor context defining the execution environment.
  final pulumi.Input<dynamic>? executorContext;
  /// GitHub-specific deployment settings
  final pulumi.Input<dynamic>? gitHub;
  /// The operation context defining pre-run and post-run commands and environment variables.
  final pulumi.Input<dynamic>? operationContext;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;
  /// The source context defining where the source code is located.
  final pulumi.Input<dynamic>? sourceContext;
  /// The stack name
  final pulumi.Input<String> stackName;
  /// A tag to identify the deployment settings configuration.
  final pulumi.Input<String>? tag;
  /// VCS provider settings
  final pulumi.Input<dynamic>? vcs;

  /// Creates a new [SettingsArgs].
  /// [agentPoolID] The identifier of the agent pool to use for deployments.
  /// [cacheOptions] Cache options for the deployment.
  /// [executorContext] The executor context defining the execution environment.
  /// [gitHub] GitHub-specific deployment settings
  /// [operationContext] The operation context defining pre-run and post-run commands and environment variables.
  /// [orgName] The organization name
  /// [projectName] The project name
  /// [sourceContext] The source context defining where the source code is located.
  /// [stackName] The stack name
  /// [tag] A tag to identify the deployment settings configuration.
  /// [vcs] VCS provider settings
  const SettingsArgs({
    this.agentPoolID,
    this.cacheOptions,
    this.executorContext,
    this.gitHub,
    this.operationContext,
    required this.orgName,
    required this.projectName,
    this.sourceContext,
    required this.stackName,
    this.tag,
    this.vcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolID': ?agentPoolID,
      'cacheOptions': ?cacheOptions,
      'executorContext': ?executorContext,
      'gitHub': ?gitHub,
      'operationContext': ?operationContext,
      'orgName': orgName,
      'projectName': projectName,
      'sourceContext': ?sourceContext,
      'stackName': stackName,
      'tag': ?tag,
      'vcs': ?vcs,
    };
  }

  factory SettingsArgs.fromMap(Map<String, dynamic> map) {
    return SettingsArgs(
      agentPoolID: (() { final guardedValue = map['agentPoolID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheOptions: (() { final guardedValue = map['cacheOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      executorContext: (() { final guardedValue = map['executorContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      gitHub: (() { final guardedValue = map['gitHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      operationContext: (() { final guardedValue = map['operationContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      sourceContext: (() { final guardedValue = map['sourceContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      stackName: pulumi.Input.fromValue(map['stackName'] as String),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vcs: (() { final guardedValue = map['vcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
