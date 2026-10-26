// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_task_execution_spec_response.dart';
import 'google_cloud_dataplex_v1_task_execution_status_response.dart';
import 'google_cloud_dataplex_v1_task_notebook_task_config_response.dart';
import 'google_cloud_dataplex_v1_task_spark_task_config_response.dart';
import 'google_cloud_dataplex_v1_task_trigger_spec_response.dart';

/// Result data returned by getTask.
class GetTaskResult {
  /// The time when the task was created.
  final String? createTime;
  /// Optional. Description of the task.
  final String? description;
  /// Optional. User friendly display name.
  final String? displayName;
  /// Spec related to how a task is executed.
  final GoogleCloudDataplexV1TaskExecutionSpecResponse? executionSpec;
  /// Status of the latest task executions.
  final GoogleCloudDataplexV1TaskExecutionStatusResponse? executionStatus;
  /// Optional. User-defined labels for the task.
  final Map<String, String>? labels;
  /// The relative resource name of the task, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/ tasks/{task_id}.
  final String? name;
  /// Config related to running scheduled Notebooks.
  final GoogleCloudDataplexV1TaskNotebookTaskConfigResponse? notebook;
  /// Config related to running custom Spark tasks.
  final GoogleCloudDataplexV1TaskSparkTaskConfigResponse? spark;
  /// Current state of the task.
  final String? state;
  /// Spec related to how often and when a task should be triggered.
  final GoogleCloudDataplexV1TaskTriggerSpecResponse? triggerSpec;
  /// System generated globally unique ID for the task. This ID will be different if the task is deleted and re-created with the same name.
  final String? uid;
  /// The time when the task was last updated.
  final String? updateTime;

  /// Creates a new [GetTaskResult].
  /// [createTime] The time when the task was created.
  /// [description] Optional. Description of the task.
  /// [displayName] Optional. User friendly display name.
  /// [executionSpec] Spec related to how a task is executed.
  /// [executionStatus] Status of the latest task executions.
  /// [labels] Optional. User-defined labels for the task.
  /// [name] The relative resource name of the task, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/ tasks/{task_id}.
  /// [notebook] Config related to running scheduled Notebooks.
  /// [spark] Config related to running custom Spark tasks.
  /// [state] Current state of the task.
  /// [triggerSpec] Spec related to how often and when a task should be triggered.
  /// [uid] System generated globally unique ID for the task. This ID will be different if the task is deleted and re-created with the same name.
  /// [updateTime] The time when the task was last updated.
  const GetTaskResult({
    this.createTime,
    this.description,
    this.displayName,
    this.executionSpec,
    this.executionStatus,
    this.labels,
    this.name,
    this.notebook,
    this.spark,
    this.state,
    this.triggerSpec,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'executionSpec': ?executionSpec?.toMap(),
      'executionStatus': ?executionStatus?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'notebook': ?notebook?.toMap(),
      'spark': ?spark?.toMap(),
      'state': ?state,
      'triggerSpec': ?triggerSpec?.toMap(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetTaskResult.fromMap(Map<String, dynamic> map) {
    return GetTaskResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionSpec: (() { final guardedValue = map['executionSpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1TaskExecutionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      executionStatus: (() { final guardedValue = map['executionStatus']; if (guardedValue == null) return null; return GoogleCloudDataplexV1TaskExecutionStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notebook: (() { final guardedValue = map['notebook']; if (guardedValue == null) return null; return GoogleCloudDataplexV1TaskNotebookTaskConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spark: (() { final guardedValue = map['spark']; if (guardedValue == null) return null; return GoogleCloudDataplexV1TaskSparkTaskConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      triggerSpec: (() { final guardedValue = map['triggerSpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1TaskTriggerSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
