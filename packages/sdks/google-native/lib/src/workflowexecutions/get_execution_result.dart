// ignore_for_file: unused_element, unnecessary_cast

import 'error_response.dart';
import 'state_error_response.dart';
import 'status_response.dart';

/// Result data returned by getExecution.
class GetExecutionResult {
  /// Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  final String? argument;
  /// The call logging level associated to this execution.
  final String? callLogLevel;
  /// Measures the duration of the execution.
  final String? duration;
  /// Marks the end of execution, successful or not.
  final String? endTime;
  /// The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  final ErrorResponse? error;
  /// Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  final Map<String, String>? labels;
  /// The resource name of the execution. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  final String? name;
  /// Output of the execution represented as a JSON string. The value can only be present if the execution's state is `SUCCEEDED`.
  final String? result;
  /// Marks the beginning of execution.
  final String? startTime;
  /// Current state of the execution.
  final String? state;
  /// Error regarding the state of the Execution resource. For example, this field will have error details if the execution data is unavailable due to revoked KMS key permissions.
  final StateErrorResponse? stateError;
  /// Status tracks the current steps and progress data of this execution.
  final StatusResponse? status;
  /// Revision of the workflow this execution is using.
  final String? workflowRevisionId;

  /// Creates a new [GetExecutionResult].
  /// [argument] Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: If you are using the REST API directly to run your workflow, you must escape any JSON string value of `argument`. Example: `'{"argument":"{\"firstName\":\"FIRST\",\"lastName\":\"LAST\"}"}'`
  /// [callLogLevel] The call logging level associated to this execution.
  /// [duration] Measures the duration of the execution.
  /// [endTime] Marks the end of execution, successful or not.
  /// [error] The error which caused the execution to finish prematurely. The value is only present if the execution's state is `FAILED` or `CANCELLED`.
  /// [labels] Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, and dashes. Label keys must start with a letter. International characters are allowed. By default, labels are inherited from the workflow but are overridden by any labels associated with the execution.
  /// [name] The resource name of the execution. Format: projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  /// [result] Output of the execution represented as a JSON string. The value can only be present if the execution's state is `SUCCEEDED`.
  /// [startTime] Marks the beginning of execution.
  /// [state] Current state of the execution.
  /// [stateError] Error regarding the state of the Execution resource. For example, this field will have error details if the execution data is unavailable due to revoked KMS key permissions.
  /// [status] Status tracks the current steps and progress data of this execution.
  /// [workflowRevisionId] Revision of the workflow this execution is using.
  const GetExecutionResult({
    this.argument,
    this.callLogLevel,
    this.duration,
    this.endTime,
    this.error,
    this.labels,
    this.name,
    this.result,
    this.startTime,
    this.state,
    this.stateError,
    this.status,
    this.workflowRevisionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argument': ?argument,
      'callLogLevel': ?callLogLevel,
      'duration': ?duration,
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'result': ?result,
      'startTime': ?startTime,
      'state': ?state,
      'stateError': ?stateError?.toMap(),
      'status': ?status?.toMap(),
      'workflowRevisionId': ?workflowRevisionId,
    };
  }

  factory GetExecutionResult.fromMap(Map<String, dynamic> map) {
    return GetExecutionResult(
      argument: (() { final guardedValue = map['argument']; if (guardedValue == null) return null; return guardedValue as String; })(),
      callLogLevel: (() { final guardedValue = map['callLogLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return ErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateError: (() { final guardedValue = map['stateError']; if (guardedValue == null) return null; return StateErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workflowRevisionId: (() { final guardedValue = map['workflowRevisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
