// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_call_log_level_workflowexecutions_v1beta.dart';

/// {@template pulumi_workflowexecutions_v1beta_execution_workflowexecutions_v1beta_args_doc}
/// The set of arguments for Execution.
/// {@endtemplate}
/// {@macro pulumi_workflowexecutions_v1beta_execution_workflowexecutions_v1beta_args_doc}
class ExecutionWorkflowexecutionsV1betaArgs {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final pulumi.Input<String>? argument;
  /// The call logging level associated to this execution.
  final pulumi.Input<ExecutionCallLogLevelWorkflowexecutionsV1beta>? callLogLevel;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowId;

  /// Creates a new [ExecutionWorkflowexecutionsV1betaArgs].
  /// [argument] Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  /// [callLogLevel] The call logging level associated to this execution.
  /// [location] Optional.
  /// [project] Optional.
  /// [workflowId] Required.
  ExecutionWorkflowexecutionsV1betaArgs({
    this.argument,
    this.callLogLevel,
    this.location,
    this.project,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argument': ?argument,
      'callLogLevel': ?pulumi.Input.mapOptionalInputValue<ExecutionCallLogLevelWorkflowexecutionsV1beta, String>(callLogLevel, (value) => value.value),
      'location': ?location,
      'project': ?project,
      'workflowId': workflowId,
    };
  }

  factory ExecutionWorkflowexecutionsV1betaArgs.fromMap(Map<String, dynamic> map) {
    return ExecutionWorkflowexecutionsV1betaArgs(
      argument: map['argument'] == null ? null : (map['argument'] as String).input(),
      callLogLevel: map['callLogLevel'] == null ? null : (ExecutionCallLogLevelWorkflowexecutionsV1beta.fromValue(map['callLogLevel'] as String)).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      workflowId: (map['workflowId'] as String).input(),
    );
  }
}

