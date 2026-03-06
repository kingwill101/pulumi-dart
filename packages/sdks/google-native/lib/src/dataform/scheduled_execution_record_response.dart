// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response.dart';

/// A record of an attempt to create a workflow invocation for this workflow config.
class ScheduledExecutionRecordResponse {
  /// The error status encountered upon this attempt to create the workflow invocation, if the attempt was unsuccessful.
  final pulumi.Input<StatusResponse> errorStatus;
  /// The timestamp of this execution attempt.
  final pulumi.Input<String> executionTime;
  /// The name of the created workflow invocation, if one was successfully created. Must be in the format `projects/*/locations/*/repositories/*/workflowInvocations/*`.
  final pulumi.Input<String> workflowInvocation;

  /// Creates a new [ScheduledExecutionRecordResponse].
  /// [errorStatus] The error status encountered upon this attempt to create the workflow invocation, if the attempt was unsuccessful.
  /// [executionTime] The timestamp of this execution attempt.
  /// [workflowInvocation] The name of the created workflow invocation, if one was successfully created. Must be in the format `projects/*/locations/*/repositories/*/workflowInvocations/*`.
  const ScheduledExecutionRecordResponse({
    required this.errorStatus,
    required this.executionTime,
    required this.workflowInvocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorStatus': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(errorStatus, (value) => value.toMap()),
      'executionTime': executionTime,
      'workflowInvocation': workflowInvocation,
    };
  }

  factory ScheduledExecutionRecordResponse.fromMap(Map<String, dynamic> map) {
    return ScheduledExecutionRecordResponse(
      errorStatus: pulumi.Input.fromValue(StatusResponse.fromMap((map['errorStatus']! as Map).cast<String, dynamic>())),
      executionTime: pulumi.Input.fromValue(map['executionTime'] as String),
      workflowInvocation: pulumi.Input.fromValue(map['workflowInvocation'] as String),
    );
  }
}

