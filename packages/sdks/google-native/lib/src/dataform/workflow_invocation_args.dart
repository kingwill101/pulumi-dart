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
    pulumi.Output<String>? compilationResult,
    pulumi.Output<InvocationConfig>? invocationConfig,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
    pulumi.Output<String>? workflowConfig,
  }) :
      compilationResult = pulumi.Input.asOptionalInput<String>(compilationResult),
      invocationConfig = pulumi.Input.asOptionalInput<InvocationConfig>(invocationConfig),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId),
      workflowConfig = pulumi.Input.asOptionalInput<String>(workflowConfig);

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
      compilationResult: map['compilationResult'] == null ? null : pulumi.Output.create<String>(map['compilationResult'] as String),
      invocationConfig: map['invocationConfig'] == null ? null : pulumi.Output.create<InvocationConfig>(InvocationConfig.fromMap((map['invocationConfig'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
      workflowConfig: map['workflowConfig'] == null ? null : pulumi.Output.create<String>(map['workflowConfig'] as String),
    );
  }
}

