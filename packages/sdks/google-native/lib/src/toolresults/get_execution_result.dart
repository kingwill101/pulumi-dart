// ignore_for_file: unused_element, unnecessary_cast

import 'outcome_response.dart';
import 'specification_response.dart';
import 'timestamp_response.dart';

/// Result data returned by getExecution.
class GetExecutionResult {
  /// The time when the Execution status transitioned to COMPLETE. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  final TimestampResponse completionTime;
  /// The time when the Execution was created. This value will be set automatically when CreateExecution is called. - In response: always set - In create/update request: never set
  final TimestampResponse creationTime;
  /// The dimensions along which different steps in this execution may vary. This must remain fixed over the life of the execution. Returns INVALID_ARGUMENT if this field is set in an update request. Returns INVALID_ARGUMENT if the same name occurs in more than one dimension_definition. Returns INVALID_ARGUMENT if the size of the list is over 100. - In response: present if set by create - In create request: optional - In update request: never set
  final List<Map<String, dynamic>> dimensionDefinitions;
  /// A unique identifier within a History for this Execution. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create/update request: never set
  final String executionId;
  /// Classify the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  final OutcomeResponse outcome;
  /// Lightweight information about execution request. - In response: present if set by create - In create: optional - In update: optional
  final SpecificationResponse specification;
  /// The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
  final String state;
  /// TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by create - In create: optional - In update: never set
  final String testExecutionMatrixId;

  /// Creates a new [GetExecutionResult].
  /// [completionTime] The time when the Execution status transitioned to COMPLETE. This value will be set automatically when state transitions to COMPLETE. - In response: set if the execution state is COMPLETE. - In create/update request: never set
  /// [creationTime] The time when the Execution was created. This value will be set automatically when CreateExecution is called. - In response: always set - In create/update request: never set
  /// [dimensionDefinitions] The dimensions along which different steps in this execution may vary. This must remain fixed over the life of the execution. Returns INVALID_ARGUMENT if this field is set in an update request. Returns INVALID_ARGUMENT if the same name occurs in more than one dimension_definition. Returns INVALID_ARGUMENT if the size of the list is over 100. - In response: present if set by create - In create request: optional - In update request: never set
  /// [executionId] A unique identifier within a History for this Execution. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create/update request: never set
  /// [outcome] Classify the result, for example into SUCCESS or FAILURE - In response: present if set by create/update request - In create/update request: optional
  /// [specification] Lightweight information about execution request. - In response: present if set by create - In create: optional - In update: optional
  /// [state] The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLETE. A PRECONDITION_FAILED will be returned if an invalid transition is requested. The state can only be set to COMPLETE once. A FAILED_PRECONDITION will be returned if the state is set to COMPLETE multiple times. If the state is set to COMPLETE, all the in-progress steps within the execution will be set as COMPLETE. If the outcome of the step is not set, the outcome will be set to INCONCLUSIVE. - In response always set - In create/update request: optional
  /// [testExecutionMatrixId] TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by create - In create: optional - In update: never set
  GetExecutionResult({
    required this.completionTime,
    required this.creationTime,
    required this.dimensionDefinitions,
    required this.executionId,
    required this.outcome,
    required this.specification,
    required this.state,
    required this.testExecutionMatrixId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTime': completionTime.toMap(),
      'creationTime': creationTime.toMap(),
      'dimensionDefinitions': dimensionDefinitions,
      'executionId': executionId,
      'outcome': outcome.toMap(),
      'specification': specification.toMap(),
      'state': state,
      'testExecutionMatrixId': testExecutionMatrixId,
    };
  }

  factory GetExecutionResult.fromMap(Map<String, dynamic> map) {
    return GetExecutionResult(
      completionTime: TimestampResponse.fromMap((map['completionTime']! as Map).cast<String, dynamic>()),
      creationTime: TimestampResponse.fromMap((map['creationTime']! as Map).cast<String, dynamic>()),
      dimensionDefinitions: (map['dimensionDefinitions'] as List).cast<Map<String, dynamic>>(),
      executionId: map['executionId'] as String,
      outcome: OutcomeResponse.fromMap((map['outcome']! as Map).cast<String, dynamic>()),
      specification: SpecificationResponse.fromMap((map['specification']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      testExecutionMatrixId: map['testExecutionMatrixId'] as String,
    );
  }
}

