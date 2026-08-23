// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_task_execution_spec.dart';
import 'google_cloud_dataplex_v1_task_notebook_task_config.dart';
import 'google_cloud_dataplex_v1_task_spark_task_config.dart';
import 'google_cloud_dataplex_v1_task_trigger_spec.dart';

/// {@template pulumi_dataplex_v1_task_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_task_args_doc}
class TaskArgs {
  /// Optional. Description of the task.
  final pulumi.Input<String>? description;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// Spec related to how a task is executed.
  final pulumi.Input<GoogleCloudDataplexV1TaskExecutionSpec> executionSpec;
  /// Optional. User-defined labels for the task.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;
  /// Config related to running scheduled Notebooks.
  final pulumi.Input<GoogleCloudDataplexV1TaskNotebookTaskConfig>? notebook;
  final pulumi.Input<String>? project;
  /// Config related to running custom Spark tasks.
  final pulumi.Input<GoogleCloudDataplexV1TaskSparkTaskConfig>? spark;
  /// Required. Task identifier.
  final pulumi.Input<String> taskId;
  /// Spec related to how often and when a task should be triggered.
  final pulumi.Input<GoogleCloudDataplexV1TaskTriggerSpec> triggerSpec;

  /// Creates a new [TaskArgs].
  /// [description] Optional. Description of the task.
  /// [displayName] Optional. User friendly display name.
  /// [executionSpec] Spec related to how a task is executed.
  /// [labels] Optional. User-defined labels for the task.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [notebook] Config related to running scheduled Notebooks.
  /// [project] Optional.
  /// [spark] Config related to running custom Spark tasks.
  /// [taskId] Required. Task identifier.
  /// [triggerSpec] Spec related to how often and when a task should be triggered.
  const TaskArgs({
    this.description,
    this.displayName,
    required this.executionSpec,
    this.labels,
    required this.lakeId,
    this.location,
    this.notebook,
    this.project,
    this.spark,
    required this.taskId,
    required this.triggerSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'executionSpec': pulumi.Input.mapInputValue<GoogleCloudDataplexV1TaskExecutionSpec, Map<String, dynamic>>(executionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'lakeId': lakeId,
      'location': ?location,
      'notebook': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1TaskNotebookTaskConfig, Map<String, dynamic>>(notebook, (value) => value.toMap()),
      'project': ?project,
      'spark': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1TaskSparkTaskConfig, Map<String, dynamic>>(spark, (value) => value.toMap()),
      'taskId': taskId,
      'triggerSpec': pulumi.Input.mapInputValue<GoogleCloudDataplexV1TaskTriggerSpec, Map<String, dynamic>>(triggerSpec, (value) => value.toMap()),
    };
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionSpec: pulumi.Input.fromValue(GoogleCloudDataplexV1TaskExecutionSpec.fromMap((map['executionSpec']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lakeId: pulumi.Input.fromValue(map['lakeId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebook: (() { final guardedValue = map['notebook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1TaskNotebookTaskConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spark: (() { final guardedValue = map['spark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1TaskSparkTaskConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      taskId: pulumi.Input.fromValue(map['taskId'] as String),
      triggerSpec: pulumi.Input.fromValue(GoogleCloudDataplexV1TaskTriggerSpec.fromMap((map['triggerSpec']! as Map).cast<String, dynamic>())),
    );
  }
}
