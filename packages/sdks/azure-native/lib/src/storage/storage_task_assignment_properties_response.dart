// ignore_for_file: unused_element, unnecessary_cast

import 'storage_task_assignment_execution_context_response.dart';
import 'storage_task_assignment_report_response.dart';
import 'storage_task_report_properties_response.dart';

/// Properties of the storage task assignment.
class StorageTaskAssignmentPropertiesResponse {
  /// Text that describes the purpose of the storage task assignment
  final String description;
  /// Whether the storage task assignment is enabled or not
  final bool enabled;
  /// The storage task assignment execution context
  final StorageTaskAssignmentExecutionContextResponse executionContext;
  /// Represents the provisioning state of the storage task assignment.
  final String provisioningState;
  /// The storage task assignment report
  final StorageTaskAssignmentReportResponse report;
  /// Run status of storage task assignment
  final StorageTaskReportPropertiesResponse? runStatus;
  /// Id of the corresponding storage task
  final String taskId;

  /// Creates a new [StorageTaskAssignmentPropertiesResponse].
  /// [description] Text that describes the purpose of the storage task assignment
  /// [enabled] Whether the storage task assignment is enabled or not
  /// [executionContext] The storage task assignment execution context
  /// [provisioningState] Represents the provisioning state of the storage task assignment.
  /// [report] The storage task assignment report
  /// [runStatus] Run status of storage task assignment
  /// [taskId] Id of the corresponding storage task
  StorageTaskAssignmentPropertiesResponse({
    required this.description,
    required this.enabled,
    required this.executionContext,
    required this.provisioningState,
    required this.report,
    this.runStatus,
    required this.taskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enabled': enabled,
      'executionContext': executionContext.toMap(),
      'provisioningState': provisioningState,
      'report': report.toMap(),
      'runStatus': ?runStatus == null ? null : runStatus!.toMap(),
      'taskId': taskId,
    };
  }

  factory StorageTaskAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentPropertiesResponse(
      description: map['description'] as String,
      enabled: map['enabled'] as bool,
      executionContext: StorageTaskAssignmentExecutionContextResponse.fromMap((map['executionContext'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      report: StorageTaskAssignmentReportResponse.fromMap((map['report'] as Map).cast<String, dynamic>()),
      runStatus: map['runStatus'] == null ? null : StorageTaskReportPropertiesResponse.fromMap((map['runStatus'] as Map).cast<String, dynamic>()),
      taskId: map['taskId'] as String,
    );
  }
}

