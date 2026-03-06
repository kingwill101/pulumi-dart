// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_spec_response.dart';

/// TaskTemplateSpec describes the data a task should have when created from a template.
class TaskTemplateSpecResponse {
  /// Optional. Specification of the desired behavior of the task.
  final pulumi.Input<TaskSpecResponse> spec;

  /// Creates a new [TaskTemplateSpecResponse].
  /// [spec] Optional. Specification of the desired behavior of the task.
  const TaskTemplateSpecResponse({
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spec': pulumi.Input.mapInputValue<TaskSpecResponse, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory TaskTemplateSpecResponse.fromMap(Map<String, dynamic> map) {
    return TaskTemplateSpecResponse(
      spec: pulumi.Input.fromValue(TaskSpecResponse.fromMap((map['spec']! as Map).cast<String, dynamic>())),
    );
  }
}

