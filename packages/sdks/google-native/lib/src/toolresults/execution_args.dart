// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_state.dart';
import 'outcome.dart';
import 'specification.dart';
import 'timestamp.dart';

/// {@template pulumi_toolresults_v1beta3_execution_args_doc}
/// The set of arguments for Execution.
/// {@endtemplate}
/// {@macro pulumi_toolresults_v1beta3_execution_args_doc}
class ExecutionArgs {
  /// The time when the Execution status transitioned to COMPLETE. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  final pulumi.Input<Timestamp>? completionTime;
  /// The time when the Execution was created. This value will be set automatically when CreateExecution is called. - In response: always set - In create/update request: never set
  final pulumi.Input<Timestamp>? creationTime;
  /// The dimensions along which different steps in this execution may vary. This must remain fixed over the life of the execution. Returns INVALID_ARGUMENT if this field is set in an update request. Returns INVALID_ARGUMENT if the same name occurs in more than one dimension_definition. Returns INVALID_ARGUMENT if the size of the list is over 100. - In response: present if set by create - In create request: optional - In update request: never set
  final pulumi.Input<List<Map<String, dynamic>>>? dimensionDefinitions;
  /// A unique identifier within a History for this Execution. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create/update request: never set
  final pulumi.Input<String>? executionId;
  final pulumi.Input<String> historyId;
  /// Classify the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  final pulumi.Input<Outcome>? outcome;
  final pulumi.Input<String>? project;
  /// A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  final pulumi.Input<String>? requestId;
  /// Lightweight information about execution request. - In response: present if set by create - In create: optional - In update: optional
  final pulumi.Input<Specification>? specification;
  /// The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
  final pulumi.Input<ExecutionState>? state;
  /// TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by create - In create: optional - In update: never set
  final pulumi.Input<String>? testExecutionMatrixId;

  /// Creates a new [ExecutionArgs].
  /// [completionTime] The time when the Execution status transitioned to COMPLETE. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  /// [creationTime] The time when the Execution was created. This value will be set automatically when CreateExecution is called. - In response: always set - In create/update request: never set
  /// [dimensionDefinitions] The dimensions along which different steps in this execution may vary. This must remain fixed over the life of the execution. Returns INVALID_ARGUMENT if this field is set in an update request. Returns INVALID_ARGUMENT if the same name occurs in more than one dimension_definition. Returns INVALID_ARGUMENT if the size of the list is over 100. - In response: present if set by create - In create request: optional - In update request: never set
  /// [executionId] A unique identifier within a History for this Execution. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create/update request: never set
  /// [historyId] Required.
  /// [outcome] Classify the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  /// [project] Optional.
  /// [requestId] A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  /// [specification] Lightweight information about execution request. - In response: present if set by create - In create: optional - In update: optional
  /// [state] The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
  /// [testExecutionMatrixId] TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by create - In create: optional - In update: never set
  ExecutionArgs({
    this.completionTime,
    this.creationTime,
    this.dimensionDefinitions,
    this.executionId,
    required this.historyId,
    this.outcome,
    this.project,
    this.requestId,
    this.specification,
    this.state,
    this.testExecutionMatrixId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTime': ?pulumi.Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(completionTime, (value) => value.toMap()),
      'creationTime': ?pulumi.Input.mapOptionalInputValue<Timestamp, Map<String, dynamic>>(creationTime, (value) => value.toMap()),
      'dimensionDefinitions': ?dimensionDefinitions,
      'executionId': ?executionId,
      'historyId': historyId,
      'outcome': ?pulumi.Input.mapOptionalInputValue<Outcome, Map<String, dynamic>>(outcome, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'specification': ?pulumi.Input.mapOptionalInputValue<Specification, Map<String, dynamic>>(specification, (value) => value.toMap()),
      'state': ?pulumi.Input.mapOptionalInputValue<ExecutionState, String>(state, (value) => value.wireValue),
      'testExecutionMatrixId': ?testExecutionMatrixId,
    };
  }

  factory ExecutionArgs.fromMap(Map<String, dynamic> map) {
    return ExecutionArgs(
      completionTime: (() { final guardedValue = map['completionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Timestamp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Timestamp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dimensionDefinitions: (() { final guardedValue = map['dimensionDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
      executionId: (() { final guardedValue = map['executionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      historyId: pulumi.Input.fromValue(map['historyId'] as String),
      outcome: (() { final guardedValue = map['outcome']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Outcome.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Specification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecutionState.fromValue(guardedValue as String)); })(),
      testExecutionMatrixId: (() { final guardedValue = map['testExecutionMatrixId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

