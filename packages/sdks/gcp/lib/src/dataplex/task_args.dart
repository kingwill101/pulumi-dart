// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_execution_spec.dart';
import 'task_notebook.dart';
import 'task_spark.dart';
import 'task_trigger_spec.dart';

/// {@template pulumi_dataplex_task_task_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_dataplex_task_task_args_doc}
class TaskArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User-provided description of the task.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// Configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<TaskExecutionSpec> executionSpec;
  /// User-defined labels for the task.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The lake in which the task will be created in.
  final pulumi.Input<String>? lake;
  /// The location in which the task will be created in.
  final pulumi.Input<String>? location;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<TaskNotebook>? notebook;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<TaskSpark>? spark;
  /// The task Id of the task.
  final pulumi.Input<String>? taskId;
  /// Configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<TaskTriggerSpec> triggerSpec;

  /// Creates a new [TaskArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] User-provided description of the task.
  /// [displayName] User friendly display name.
  /// [executionSpec] Configuration for the cluster
  /// [labels] User-defined labels for the task.
  /// [lake] The lake in which the task will be created in.
  /// [location] The location in which the task will be created in.
  /// [notebook] A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// [project] The ID of the project in which the resource belongs.
  /// [spark] A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// [taskId] The task Id of the task.
  /// [triggerSpec] Configuration for the cluster
  const TaskArgs({
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.executionSpec,
    this.labels,
    this.lake,
    this.location,
    this.notebook,
    this.project,
    this.spark,
    this.taskId,
    required this.triggerSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'executionSpec': pulumi.Input.mapInputValue<TaskExecutionSpec, Map<String, dynamic>>(executionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'lake': ?lake,
      'location': ?location,
      'notebook': ?pulumi.Input.mapOptionalInputValue<TaskNotebook, Map<String, dynamic>>(notebook, (value) => value.toMap()),
      'project': ?project,
      'spark': ?pulumi.Input.mapOptionalInputValue<TaskSpark, Map<String, dynamic>>(spark, (value) => value.toMap()),
      'taskId': ?taskId,
      'triggerSpec': pulumi.Input.mapInputValue<TaskTriggerSpec, Map<String, dynamic>>(triggerSpec, (value) => value.toMap()),
    };
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionSpec: pulumi.Input.fromValue(TaskExecutionSpec.fromMap((map['executionSpec']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lake: (() { final guardedValue = map['lake']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebook: (() { final guardedValue = map['notebook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskNotebook.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spark: (() { final guardedValue = map['spark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskSpark.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskId: (() { final guardedValue = map['taskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerSpec: pulumi.Input.fromValue(TaskTriggerSpec.fromMap((map['triggerSpec']! as Map).cast<String, dynamic>())),
    );
  }
}
