// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_task_assignment_execution_context.dart';
import 'storage_task_assignment_report.dart';

/// Properties of the storage task assignment.
class StorageTaskAssignmentProperties {
  /// Text that describes the purpose of the storage task assignment
  final pulumi.Input<String> description;
  /// Whether the storage task assignment is enabled or not
  final pulumi.Input<bool> enabled;
  /// The storage task assignment execution context
  final pulumi.Input<StorageTaskAssignmentExecutionContext> executionContext;
  /// The storage task assignment report
  final pulumi.Input<StorageTaskAssignmentReport> report;
  /// Id of the corresponding storage task
  final pulumi.Input<String> taskId;

  /// Creates a new [StorageTaskAssignmentProperties].
  /// [description] Text that describes the purpose of the storage task assignment
  /// [enabled] Whether the storage task assignment is enabled or not
  /// [executionContext] The storage task assignment execution context
  /// [report] The storage task assignment report
  /// [taskId] Id of the corresponding storage task
  const StorageTaskAssignmentProperties({
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
      'executionContext': pulumi.Input.mapInputValue<StorageTaskAssignmentExecutionContext, Map<String, dynamic>>(executionContext, (value) => value.toMap()),
      'report': pulumi.Input.mapInputValue<StorageTaskAssignmentReport, Map<String, dynamic>>(report, (value) => value.toMap()),
      'taskId': taskId,
    };
  }

  factory StorageTaskAssignmentProperties.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentProperties(
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      executionContext: pulumi.Input.fromValue(StorageTaskAssignmentExecutionContext.fromMap((map['executionContext']! as Map).cast<String, dynamic>())),
      report: pulumi.Input.fromValue(StorageTaskAssignmentReport.fromMap((map['report']! as Map).cast<String, dynamic>())),
      taskId: pulumi.Input.fromValue(map['taskId'] as String),
    );
  }
}

