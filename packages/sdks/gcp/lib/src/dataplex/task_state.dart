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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<TaskExecutionSpec>? executionSpec,
    pulumi.Output<List<TaskExecutionStatus>>? executionStatuses,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? lake,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<TaskNotebook>? notebook,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<TaskSpark>? spark,
    pulumi.Output<String>? state,
    pulumi.Output<String>? taskId,
    pulumi.Output<TaskTriggerSpec>? triggerSpec,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      executionSpec = pulumi.Input.asOptionalInput<TaskExecutionSpec>(executionSpec),
      executionStatuses = pulumi.Input.asOptionalInput<List<TaskExecutionStatus>>(executionStatuses),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lake = pulumi.Input.asOptionalInput<String>(lake),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notebook = pulumi.Input.asOptionalInput<TaskNotebook>(notebook),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      spark = pulumi.Input.asOptionalInput<TaskSpark>(spark),
      state = pulumi.Input.asOptionalInput<String>(state),
      taskId = pulumi.Input.asOptionalInput<String>(taskId),
      triggerSpec = pulumi.Input.asOptionalInput<TaskTriggerSpec>(triggerSpec),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      executionSpec: map['executionSpec'] == null ? null : pulumi.Output.create<TaskExecutionSpec>(TaskExecutionSpec.fromMap((map['executionSpec'] as Map).cast<String, dynamic>())),
      executionStatuses: map['executionStatuses'] == null ? null : pulumi.Output.create<List<TaskExecutionStatus>>(pulumi.Input.decodeList<TaskExecutionStatus>(map['executionStatuses'], (value) => TaskExecutionStatus.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lake: map['lake'] == null ? null : pulumi.Output.create<String>(map['lake'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notebook: map['notebook'] == null ? null : pulumi.Output.create<TaskNotebook>(TaskNotebook.fromMap((map['notebook'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      spark: map['spark'] == null ? null : pulumi.Output.create<TaskSpark>(TaskSpark.fromMap((map['spark'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      taskId: map['taskId'] == null ? null : pulumi.Output.create<String>(map['taskId'] as String),
      triggerSpec: map['triggerSpec'] == null ? null : pulumi.Output.create<TaskTriggerSpec>(TaskTriggerSpec.fromMap((map['triggerSpec'] as Map).cast<String, dynamic>())),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

