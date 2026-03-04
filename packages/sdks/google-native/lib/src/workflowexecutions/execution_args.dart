// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_call_log_level.dart';

/// {@template pulumi_workflowexecutions_v1_execution_args_doc}
/// The set of arguments for Execution.
/// {@endtemplate}
/// {@macro pulumi_workflowexecutions_v1_execution_args_doc}
class ExecutionArgs {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final pulumi.Input<String>? argument;

  /// The call logging level associated to this execution.
  final pulumi.Input<ExecutionCallLogLevel>? callLogLevel;

  /// Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowId;

  /// Creates a new [ExecutionArgs].
  /// [argument] Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  /// [callLogLevel] The call logging level associated to this execution.
  /// [labels] Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  /// [location] Optional.
  /// [project] Optional.
  /// [workflowId] Required.
  ExecutionArgs({
    this.argument,
    this.callLogLevel,
    this.labels,
    this.location,
    this.project,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argument': ?argument,
      'callLogLevel':
          ?pulumi.Input.mapOptionalInputValue<ExecutionCallLogLevel, String>(
            callLogLevel,
            (value) => value.wireValue,
          ),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'workflowId': workflowId,
    };
  }

  factory ExecutionArgs.fromMap(Map<String, dynamic> map) {
    return ExecutionArgs(
      argument: (() {
        final guardedValue = map['argument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      callLogLevel: (() {
        final guardedValue = map['callLogLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecutionCallLogLevel.fromValue(guardedValue as String),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
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
      workflowId: pulumi.Input.fromValue(map['workflowId'] as String),
    );
  }
}
