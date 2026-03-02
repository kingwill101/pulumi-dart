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
  ScheduledExecutionRecordResponse({
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
      errorStatus: (StatusResponse.fromMap((map['errorStatus'] as Map).cast<String, dynamic>())).input(),
      executionTime: (map['executionTime'] as String).input(),
      workflowInvocation: (map['workflowInvocation'] as String).input(),
    );
  }
}

