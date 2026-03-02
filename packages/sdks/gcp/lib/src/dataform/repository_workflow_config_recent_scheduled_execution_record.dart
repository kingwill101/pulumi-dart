// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_workflow_config_recent_scheduled_execution_record_error_status.dart';

class RepositoryWorkflowConfigRecentScheduledExecutionRecord {
  /// (Output)
  /// The error status encountered upon this attempt to create the workflow invocation, if the attempt was unsuccessful.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryWorkflowConfigRecentScheduledExecutionRecordErrorStatus>>? errorStatuses;
  /// (Output)
  /// The timestamp of this workflow attempt.
  final pulumi.Input<String>? executionTime;
  /// (Output)
  /// The name of the created workflow invocation, if one was successfully created. In the format projects/*/locations/*/repositories/*/workflowInvocations/*.
  final pulumi.Input<String>? workflowInvocation;

  /// Creates a new [RepositoryWorkflowConfigRecentScheduledExecutionRecord].
  /// [errorStatuses] (Output)
  /// [executionTime] (Output)
  /// [workflowInvocation] (Output)
  RepositoryWorkflowConfigRecentScheduledExecutionRecord({
    this.errorStatuses,
    this.executionTime,
    this.workflowInvocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorStatuses': ?pulumi.Input.mapOptionalInputValue<List<RepositoryWorkflowConfigRecentScheduledExecutionRecordErrorStatus>, List<Map<String, dynamic>>>(errorStatuses, (value) => pulumi.Input.encodeList<RepositoryWorkflowConfigRecentScheduledExecutionRecordErrorStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionTime': ?executionTime,
      'workflowInvocation': ?workflowInvocation,
    };
  }

  factory RepositoryWorkflowConfigRecentScheduledExecutionRecord.fromMap(Map<String, dynamic> map) {
    return RepositoryWorkflowConfigRecentScheduledExecutionRecord(
      errorStatuses: map['errorStatuses'] == null ? null : (pulumi.Input.decodeList<RepositoryWorkflowConfigRecentScheduledExecutionRecordErrorStatus>(map['errorStatuses']!, (value) => RepositoryWorkflowConfigRecentScheduledExecutionRecordErrorStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      executionTime: map['executionTime'] == null ? null : (map['executionTime']! as String).input(),
      workflowInvocation: map['workflowInvocation'] == null ? null : (map['workflowInvocation']! as String).input(),
    );
  }
}

