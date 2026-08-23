// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_template_spec.dart';

/// ExecutionSpec describes how the execution will look.
class ExecutionSpec {
  /// Optional. Specifies the maximum desired number of tasks the execution should run at given time. Must be &lt;= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed, i.e. when the work left to do is less than max parallelism.
  final pulumi.Input<int>? parallelism;
  /// Optional. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.
  final pulumi.Input<int>? taskCount;
  /// Optional. The template used to create tasks for this execution.
  final pulumi.Input<TaskTemplateSpec>? template;

  /// Creates a new [ExecutionSpec].
  /// [parallelism] Optional. Specifies the maximum desired number of tasks the execution should run at given time. Must be &lt;= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed, i.e. when the work left to do is less than max parallelism.
  /// [taskCount] Optional. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.
  /// [template] Optional. The template used to create tasks for this execution.
  const ExecutionSpec({
    this.parallelism,
    this.taskCount,
    this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelism': ?parallelism,
      'taskCount': ?taskCount,
      'template': ?pulumi.Input.mapOptionalInputValue<TaskTemplateSpec, Map<String, dynamic>>(template, (value) => value.toMap()),
    };
  }

  factory ExecutionSpec.fromMap(Map<String, dynamic> map) {
    return ExecutionSpec(
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      taskCount: (() { final guardedValue = map['taskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskTemplateSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
