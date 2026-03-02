// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to an Execution. Use /Executions.GetExecution with the given name to get full execution including the latest status.
class ExecutionReferenceResponse {
  /// Optional. Completion timestamp of the execution.
  final pulumi.Input<String> completionTimestamp;
  /// Optional. Creation timestamp of the execution.
  final pulumi.Input<String> creationTimestamp;
  /// Optional. Name of the execution.
  final pulumi.Input<String> name;

  /// Creates a new [ExecutionReferenceResponse].
  /// [completionTimestamp] Optional. Completion timestamp of the execution.
  /// [creationTimestamp] Optional. Creation timestamp of the execution.
  /// [name] Optional. Name of the execution.
  ExecutionReferenceResponse({
    required this.completionTimestamp,
    required this.creationTimestamp,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionTimestamp': completionTimestamp,
      'creationTimestamp': creationTimestamp,
      'name': name,
    };
  }

  factory ExecutionReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionReferenceResponse(
      completionTimestamp: (map['completionTimestamp'] as String).input(),
      creationTimestamp: (map['creationTimestamp'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

