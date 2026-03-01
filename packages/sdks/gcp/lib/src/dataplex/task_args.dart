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
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
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
  TaskArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<TaskExecutionSpec> executionSpec,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? lake,
    pulumi.Output<String>? location,
    pulumi.Output<TaskNotebook>? notebook,
    pulumi.Output<String>? project,
    pulumi.Output<TaskSpark>? spark,
    pulumi.Output<String>? taskId,
    required pulumi.Output<TaskTriggerSpec> triggerSpec,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      executionSpec = pulumi.Input.asInput<TaskExecutionSpec>(executionSpec),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lake = pulumi.Input.asOptionalInput<String>(lake),
      location = pulumi.Input.asOptionalInput<String>(location),
      notebook = pulumi.Input.asOptionalInput<TaskNotebook>(notebook),
      project = pulumi.Input.asOptionalInput<String>(project),
      spark = pulumi.Input.asOptionalInput<TaskSpark>(spark),
      taskId = pulumi.Input.asOptionalInput<String>(taskId),
      triggerSpec = pulumi.Input.asInput<TaskTriggerSpec>(triggerSpec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      executionSpec: pulumi.Output.create<TaskExecutionSpec>(TaskExecutionSpec.fromMap((map['executionSpec'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lake: map['lake'] == null ? null : pulumi.Output.create<String>(map['lake'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      notebook: map['notebook'] == null ? null : pulumi.Output.create<TaskNotebook>(TaskNotebook.fromMap((map['notebook'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      spark: map['spark'] == null ? null : pulumi.Output.create<TaskSpark>(TaskSpark.fromMap((map['spark'] as Map).cast<String, dynamic>())),
      taskId: map['taskId'] == null ? null : pulumi.Output.create<String>(map['taskId'] as String),
      triggerSpec: pulumi.Output.create<TaskTriggerSpec>(TaskTriggerSpec.fromMap((map['triggerSpec'] as Map).cast<String, dynamic>())),
    );
  }
}

