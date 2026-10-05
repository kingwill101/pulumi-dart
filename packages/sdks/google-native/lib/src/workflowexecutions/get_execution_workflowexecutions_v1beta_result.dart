// ignore_for_file: unused_element, unnecessary_cast

import 'error_response_workflowexecutions_v1beta.dart';
import 'status_response_workflowexecutions_v1beta.dart';

/// Result data returned by getExecution.
class GetExecutionWorkflowexecutionsV1betaResult {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final String? argument;
  /// The call logging level associated to this execution.
  final String? callLogLevel;
  /// Marks the end of execution, successful or not.
  final String? endTime;
  /// The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  final ErrorResponseWorkflowexecutionsV1beta? error;
  /// The resource name of the execution. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  final String? name;
  /// Output of the execution represented as a JSON string. The value can only be present if the execution's state is `SUCCEEDED`.
  final String? result;
  /// Marks the beginning of execution.
  final String? startTime;
  /// Current state of the execution.
  final String? state;
  /// Status tracks the current steps and progress data of this execution.
  final StatusResponseWorkflowexecutionsV1beta? status;
  /// Revision of the workflow this execution is using.
  final String? workflowRevisionId;

  /// Creates a new [GetExecutionWorkflowexecutionsV1betaResult].
  /// [argument] Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  /// [callLogLevel] The call logging level associated to this execution.
  /// [endTime] Marks the end of execution, successful or not.
  /// [error] The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  /// [name] The resource name of the execution. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  /// [result] Output of the execution represented as a JSON string. The value can only be present if the execution's state is `SUCCEEDED`.
  /// [startTime] Marks the beginning of execution.
  /// [state] Current state of the execution.
  /// [status] Status tracks the current steps and progress data of this execution.
  /// [workflowRevisionId] Revision of the workflow this execution is using.
  const GetExecutionWorkflowexecutionsV1betaResult({
    this.argument,
    this.callLogLevel,
    this.endTime,
    this.error,
    this.name,
    this.result,
    this.startTime,
    this.state,
    this.status,
    this.workflowRevisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argument': ?argument,
      'callLogLevel': ?callLogLevel,
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'name': ?name,
      'result': ?result,
      'startTime': ?startTime,
      'state': ?state,
      'status': ?status?.toMap(),
      'workflowRevisionId': ?workflowRevisionId,
    };
  }

  factory GetExecutionWorkflowexecutionsV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetExecutionWorkflowexecutionsV1betaResult(
      argument: (() { final guardedValue = map['argument']; if (guardedValue == null) return null; return guardedValue as String; })(),
      callLogLevel: (() { final guardedValue = map['callLogLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return ErrorResponseWorkflowexecutionsV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return StatusResponseWorkflowexecutionsV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workflowRevisionId: (() { final guardedValue = map['workflowRevisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
