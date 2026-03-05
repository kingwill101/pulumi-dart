// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_config.dart';

/// {@template pulumi_dataform_v1beta1_workflow_invocation_args_doc}
/// The set of arguments for WorkflowInvocation.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_workflow_invocation_args_doc}
class WorkflowInvocationArgs {
  /// Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  final pulumi.Input<String>? compilationResult;
  /// Immutable. If left unset, a default InvocationConfig will be used.
  final pulumi.Input<InvocationConfig>? invocationConfig;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  /// Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  final pulumi.Input<String>? workflowConfig;

  /// Creates a new [WorkflowInvocationArgs].
  /// [compilationResult] Immutable. The name of the compilation result to use for this invocation. Must be in the format `projects/*/locations/*/repositories/*/compilationResults/*`.
  /// [invocationConfig] Immutable. If left unset, a default InvocationConfig will be used.
  /// [location] Optional.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [workflowConfig] Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations/*/repositories/*/workflowConfigs/*`.
  WorkflowInvocationArgs({
    this.compilationResult,
    this.invocationConfig,
    this.location,
    this.project,
    required this.repositoryId,
    this.workflowConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compilationResult': ?compilationResult,
      'invocationConfig': ?pulumi.Input.mapOptionalInputValue<InvocationConfig, Map<String, dynamic>>(invocationConfig, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'repositoryId': repositoryId,
      'workflowConfig': ?workflowConfig,
    };
  }

  factory WorkflowInvocationArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowInvocationArgs(
      compilationResult: (() { final guardedValue = map['compilationResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invocationConfig: (() { final guardedValue = map['invocationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InvocationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      workflowConfig: (() { final guardedValue = map['workflowConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

