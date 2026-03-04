// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_spec.dart';

/// TaskTemplateSpec describes the data a task should have when created from a template.
class TaskTemplateSpec {
  /// Optional. Specification of the desired behavior of the task.
  final pulumi.Input<TaskSpec>? spec;

  /// Creates a new [TaskTemplateSpec].
  /// [spec] Optional. Specification of the desired behavior of the task.
  TaskTemplateSpec({this.spec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spec':
          ?pulumi.Input.mapOptionalInputValue<TaskSpec, Map<String, dynamic>>(
            spec,
            (value) => value.toMap(),
          ),
    };
  }

  factory TaskTemplateSpec.fromMap(Map<String, dynamic> map) {
    return TaskTemplateSpec(
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TaskSpec.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
