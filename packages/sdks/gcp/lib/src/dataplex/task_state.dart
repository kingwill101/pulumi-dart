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
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-provided description of the task.
  final pulumi.Input<String?>? description;
  /// User friendly display name.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<TaskExecutionSpec?>? executionSpec;
  /// Configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<List<TaskExecutionStatus>?>? executionStatuses;
  /// User-defined labels for the task.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The lake in which the task will be created in.
  final pulumi.Input<String?>? lake;
  /// The location in which the task will be created in.
  final pulumi.Input<String?>? location;
  /// (Output)
  /// The relative resource name of the job, of the form: projects/{project_number}/locations/{locationId}/lakes/{lakeId}/tasks/{taskId}/jobs/{jobId}.
  final pulumi.Input<String?>? name;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<TaskNotebook?>? notebook;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<TaskSpark?>? spark;
  /// (Output)
  /// Execution state for the job.
  final pulumi.Input<String?>? state;
  /// The task Id of the task.
  final pulumi.Input<String?>? taskId;
  /// Configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<TaskTriggerSpec?>? triggerSpec;
  /// (Output)
  /// System generated globally unique ID for the job.
  final pulumi.Input<String?>? uid;
  /// (Output)
  /// Last update time of the status.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [TaskState].
  /// [createTime] The time when the task was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const TaskState({
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      executionSpec: (() { final guardedValue = map['executionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskExecutionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionStatuses: (() { final guardedValue = map['executionStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaskExecutionStatus>(guardedValue, (value) => TaskExecutionStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lake: (() { final guardedValue = map['lake']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebook: (() { final guardedValue = map['notebook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskNotebook.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      spark: (() { final guardedValue = map['spark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskSpark.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskId: (() { final guardedValue = map['taskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerSpec: (() { final guardedValue = map['triggerSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskTriggerSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
