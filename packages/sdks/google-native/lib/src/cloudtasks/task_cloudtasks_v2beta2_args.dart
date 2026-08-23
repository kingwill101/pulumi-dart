// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_http_request_cloudtasks_v2beta2.dart';
import 'http_request_cloudtasks_v2beta2.dart';
import 'pull_message.dart';
import 'task_response_view_cloudtasks_v2beta2.dart';

/// {@template pulumi_cloudtasks_v2beta2_task_cloudtasks_v2beta2_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2beta2_task_cloudtasks_v2beta2_args_doc}
class TaskCloudtasksV2beta2Args {
  /// App Engine HTTP request that is sent to the task's target. Can be set only if app_engine_http_target is set on the queue. An App Engine task is a task that has AppEngineHttpRequest set.
  final pulumi.Input<AppEngineHttpRequestCloudtasksV2beta2>? appEngineHttpRequest;
  /// HTTP request that is sent to the task's target. An HTTP task is a task that has HttpRequest set.
  final pulumi.Input<HttpRequestCloudtasksV2beta2>? httpRequest;
  final pulumi.Input<String>? location;
  /// Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// LeaseTasks to process the task. Can be set only if pull_target is set on the queue. A pull task is a task that has PullMessage set.
  final pulumi.Input<PullMessage>? pullMessage;
  final pulumi.Input<String> queueId;
  /// The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
  final pulumi.Input<TaskResponseViewCloudtasksV2beta2>? responseView;
  /// The time when the task is scheduled to be attempted. For App Engine queues, this is when the task will be attempted or retried. For pull queues, this is the time when the task is available to be leased; if a task is currently leased, this is the time when the current lease expires, that is, the time that the task was leased plus the lease_duration. `schedule_time` will be truncated to the nearest microsecond.
  final pulumi.Input<String>? scheduleTime;

  /// Creates a new [TaskCloudtasksV2beta2Args].
  /// [appEngineHttpRequest] App Engine HTTP request that is sent to the task's target. Can be set only if app_engine_http_target is set on the queue. An App Engine task is a task that has AppEngineHttpRequest set.
  /// [httpRequest] HTTP request that is sent to the task's target. An HTTP task is a task that has HttpRequest set.
  /// [location] Optional.
  /// [name] Optionally caller-specified in CreateTask. The task name. The task name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the task's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters. * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  /// [project] Optional.
  /// [pullMessage] LeaseTasks to process the task. Can be set only if pull_target is set on the queue. A pull task is a task that has PullMessage set.
  /// [queueId] Required.
  /// [responseView] The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains. Authorization for FULL requires `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/) permission on the Task resource.
  /// [scheduleTime] The time when the task is scheduled to be attempted. For App Engine queues, this is when the task will be attempted or retried. For pull queues, this is the time when the task is available to be leased; if a task is currently leased, this is the time when the current lease expires, that is, the time that the task was leased plus the lease_duration. `schedule_time` will be truncated to the nearest microsecond.
  const TaskCloudtasksV2beta2Args({
    this.appEngineHttpRequest,
    this.httpRequest,
    this.location,
    this.name,
    this.project,
    this.pullMessage,
    required this.queueId,
    this.responseView,
    this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineHttpRequest': ?pulumi.Input.mapOptionalInputValue<AppEngineHttpRequestCloudtasksV2beta2, Map<String, dynamic>>(appEngineHttpRequest, (value) => value.toMap()),
      'httpRequest': ?pulumi.Input.mapOptionalInputValue<HttpRequestCloudtasksV2beta2, Map<String, dynamic>>(httpRequest, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pullMessage': ?pulumi.Input.mapOptionalInputValue<PullMessage, Map<String, dynamic>>(pullMessage, (value) => value.toMap()),
      'queueId': queueId,
      'responseView': ?pulumi.Input.mapOptionalInputValue<TaskResponseViewCloudtasksV2beta2, String>(responseView, (value) => value.wireValue),
      'scheduleTime': ?scheduleTime,
    };
  }

  factory TaskCloudtasksV2beta2Args.fromMap(Map<String, dynamic> map) {
    return TaskCloudtasksV2beta2Args(
      appEngineHttpRequest: (() { final guardedValue = map['appEngineHttpRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppEngineHttpRequestCloudtasksV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpRequest: (() { final guardedValue = map['httpRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRequestCloudtasksV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullMessage: (() { final guardedValue = map['pullMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PullMessage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
      responseView: (() { final guardedValue = map['responseView']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskResponseViewCloudtasksV2beta2.fromValue(guardedValue as String)); })(),
      scheduleTime: (() { final guardedValue = map['scheduleTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
