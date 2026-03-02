// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_execution_spec.dart';
import 'task_execution_status.dart';
import 'task_notebook.dart';
import 'task_spark.dart';
import 'task_trigger_spec.dart';

/// Input properties used for looking up and filtering Task resources.
class TaskState {
  /// The time when the task was created.
  final pulumi.Input<String>? createTime;
  /// User-provided description of the task.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<TaskExecutionSpec>? executionSpec;
  /// Configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<List<TaskExecutionStatus>>? executionStatuses;
  /// User-defined labels for the task.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The lake in which the task will be created in.
  final pulumi.Input<String>? lake;
  /// The location in which the task will be created in.
  final pulumi.Input<String>? location;
  /// (Output)
  /// The relative resource name of the job, of the form: projects/{project_number}/locations/{locationId}/lakes/{lakeId}/tasks/{taskId}/jobs/{jobId}.
  final pulumi.Input<String>? name;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<TaskNotebook>? notebook;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<TaskSpark>? spark;
  /// (Output)
  /// Execution state for the job.
  final pulumi.Input<String>? state;
  /// The task Id of the task.
  final pulumi.Input<String>? taskId;
  /// Configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<TaskTriggerSpec>? triggerSpec;
  /// (Output)
  /// System generated globally unique ID for the job.
  final pulumi.Input<String>? uid;
  /// (Output)
  /// Last update time of the status.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TaskState].
  /// [createTime] The time when the task was created.
  /// [description] User-provided description of the task.
  /// [displayName] User friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [executionSpec] Configuration for the cluster
  /// [executionStatuses] Configuration for the cluster
  /// [labels] User-defined labels for the task.
  /// [lake] The lake in which the task will be created in.
  /// [location] The location in which the task will be created in.
  /// [name] (Output)
  /// [notebook] A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [spark] A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// [state] (Output)
  /// [taskId] The task Id of the task.
  /// [triggerSpec] Configuration for the cluster
  /// [uid] (Output)
  /// [updateTime] (Output)
  TaskState({
    this.createTime,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.executionSpec,
    this.executionStatuses,
    this.labels,
    this.lake,
    this.location,
    this.name,
    this.notebook,
    this.project,
    this.pulumiLabels,
    this.spark,
    this.state,
    this.taskId,
    this.triggerSpec,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'executionSpec': ?pulumi.Input.mapOptionalInputValue<TaskExecutionSpec, Map<String, dynamic>>(executionSpec, (value) => value.toMap()),
      'executionStatuses': ?pulumi.Input.mapOptionalInputValue<List<TaskExecutionStatus>, List<Map<String, dynamic>>>(executionStatuses, (value) => pulumi.Input.encodeList<TaskExecutionStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'lake': ?lake,
      'location': ?location,
      'name': ?name,
      'notebook': ?pulumi.Input.mapOptionalInputValue<TaskNotebook, Map<String, dynamic>>(notebook, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'spark': ?pulumi.Input.mapOptionalInputValue<TaskSpark, Map<String, dynamic>>(spark, (value) => value.toMap()),
      'state': ?state,
      'taskId': ?taskId,
      'triggerSpec': ?pulumi.Input.mapOptionalInputValue<TaskTriggerSpec, Map<String, dynamic>>(triggerSpec, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory TaskState.fromMap(Map<String, dynamic> map) {
    return TaskState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      executionSpec: map['executionSpec'] == null ? null : (TaskExecutionSpec.fromMap((map['executionSpec'] as Map).cast<String, dynamic>())).input(),
      executionStatuses: map['executionStatuses'] == null ? null : (pulumi.Input.decodeList<TaskExecutionStatus>(map['executionStatuses'], (value) => TaskExecutionStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      lake: map['lake'] == null ? null : (map['lake'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notebook: map['notebook'] == null ? null : (TaskNotebook.fromMap((map['notebook'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      spark: map['spark'] == null ? null : (TaskSpark.fromMap((map['spark'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      taskId: map['taskId'] == null ? null : (map['taskId'] as String).input(),
      triggerSpec: map['triggerSpec'] == null ? null : (TaskTriggerSpec.fromMap((map['triggerSpec'] as Map).cast<String, dynamic>())).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

