// ignore_for_file: unused_element, unnecessary_cast

import 'storage_task_assignment_execution_context.dart';
import 'storage_task_assignment_report.dart';

/// Properties of the storage task assignment.
class StorageTaskAssignmentProperties {
  /// Text that describes the purpose of the storage task assignment
  final String description;
  /// Whether the storage task assignment is enabled or not
  final bool enabled;
  /// The storage task assignment execution context
  final StorageTaskAssignmentExecutionContext executionContext;
  /// The storage task assignment report
  final StorageTaskAssignmentReport report;
  /// Id of the corresponding storage task
  final String taskId;

  /// Creates a new [StorageTaskAssignmentProperties].
  /// [description] Text that describes the purpose of the storage task assignment
  /// [enabled] Whether the storage task assignment is enabled or not
  /// [executionContext] The storage task assignment execution context
  /// [report] The storage task assignment report
  /// [taskId] Id of the corresponding storage task
  StorageTaskAssignmentProperties({
    required this.description,
    required this.enabled,
    required this.executionContext,
    required this.report,
    required this.taskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enabled': enabled,
      'executionContext': executionContext.toMap(),
      'report': report.toMap(),
      'taskId': taskId,
    };
  }

  factory StorageTaskAssignmentProperties.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentProperties(
      description: map['description'] as String,
      enabled: map['enabled'] as bool,
      executionContext: StorageTaskAssignmentExecutionContext.fromMap((map['executionContext'] as Map).cast<String, dynamic>()),
      report: StorageTaskAssignmentReport.fromMap((map['report'] as Map).cast<String, dynamic>()),
      taskId: map['taskId'] as String,
    );
  }
}

