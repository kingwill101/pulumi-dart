// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_task_assignment_execution_context_response.dart';
import 'storage_task_assignment_report_response.dart';
import 'storage_task_report_properties_response.dart';

/// Properties of the storage task assignment.
class StorageTaskAssignmentPropertiesResponse {
  /// Text that describes the purpose of the storage task assignment
  final pulumi.Input<String> description;
  /// Whether the storage task assignment is enabled or not
  final pulumi.Input<bool> enabled;
  /// The storage task assignment execution context
  final pulumi.Input<StorageTaskAssignmentExecutionContextResponse> executionContext;
  /// Represents the provisioning state of the storage task assignment.
  final pulumi.Input<String> provisioningState;
  /// The storage task assignment report
  final pulumi.Input<StorageTaskAssignmentReportResponse> report;
  /// Run status of storage task assignment
  final pulumi.Input<StorageTaskReportPropertiesResponse>? runStatus;
  /// Id of the corresponding storage task
  final pulumi.Input<String> taskId;

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
      'executionContext': pulumi.Input.mapInputValue<StorageTaskAssignmentExecutionContextResponse, Map<String, dynamic>>(executionContext, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'report': pulumi.Input.mapInputValue<StorageTaskAssignmentReportResponse, Map<String, dynamic>>(report, (value) => value.toMap()),
      'runStatus': ?pulumi.Input.mapOptionalInputValue<StorageTaskReportPropertiesResponse, Map<String, dynamic>>(runStatus, (value) => value.toMap()),
      'taskId': taskId,
    };
  }

  factory StorageTaskAssignmentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentPropertiesResponse(
      description: (map['description'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      executionContext: (StorageTaskAssignmentExecutionContextResponse.fromMap((map['executionContext'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      report: (StorageTaskAssignmentReportResponse.fromMap((map['report'] as Map).cast<String, dynamic>())).input(),
      runStatus: map['runStatus'] == null ? null : (StorageTaskReportPropertiesResponse.fromMap((map['runStatus']! as Map).cast<String, dynamic>())).input(),
      taskId: (map['taskId'] as String).input(),
    );
  }
}

