// ignore_for_file: unused_element, unnecessary_cast

import 'app_engine_http_target_response.dart';
import 'http_target_response_cloudtasks_v2beta2.dart';
import 'queue_stats_response.dart';
import 'rate_limits_response_cloudtasks_v2beta2.dart';
import 'retry_config_response_cloudtasks_v2beta2.dart';

/// Result data returned by getQueue.
class GetQueueCloudtasksV2beta2Result {
  /// App Engine HTTP target. An App Engine queue is a queue that has an AppEngineHttpTarget.
  final AppEngineHttpTargetResponse? appEngineHttpTarget;
  /// An http_target is used to override the target values for HTTP tasks.
  final HttpTargetResponseCloudtasksV2beta2? httpTarget;
  /// Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  final String? name;
  /// Pull target. A pull queue is a queue that has a PullTarget.
  final Map<String, dynamic>? pullTarget;
  /// The last time this queue was purged. All tasks that were created before this time were purged. A queue can be purged using PurgeQueue, the [App Engine Task Queue SDK, or the Cloud Console](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue). Purge time will be truncated to the nearest microsecond. Purge time will be unset if the queue has never been purged.
  final String? purgeTime;
  /// Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts however they control how tasks are attempted in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc).
  final RateLimitsResponseCloudtasksV2beta2? rateLimits;
  /// Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  final RetryConfigResponseCloudtasksV2beta2? retryConfig;
  /// The state of the queue. `state` can only be changed by called PauseQueue, ResumeQueue, or uploading [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref). UpdateQueue cannot be used to change `state`.
  final String? state;
  /// The realtime, informational statistics for a queue. In order to receive the statistics the caller should include this field in the FieldMask.
  final QueueStatsResponse? stats;
  /// The maximum amount of time that a task will be retained in this queue. Queues created by Cloud Tasks have a default `task_ttl` of 31 days. After a task has lived for `task_ttl`, the task will be deleted regardless of whether it was dispatched or not. The `task_ttl` for queues created via queue.yaml/xml is equal to the maximum duration because there is a [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for these queues. To view the maximum valid duration, see the documentation for Duration.
  final String? taskTtl;
  /// The task tombstone time to live (TTL). After a task is deleted or completed, the task's tombstone is retained for the length of time specified by `tombstone_ttl`. The tombstone is used by task de-duplication; another task with the same name can't be created until the tombstone has expired. For more information about task de-duplication, see the documentation for CreateTaskRequest. Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
  final String? tombstoneTtl;

  /// Creates a new [GetQueueCloudtasksV2beta2Result].
  /// [appEngineHttpTarget] App Engine HTTP target. An App Engine queue is a queue that has an AppEngineHttpTarget.
  /// [httpTarget] An http_target is used to override the target values for HTTP tasks.
  /// [name] Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  /// [pullTarget] Pull target. A pull queue is a queue that has a PullTarget.
  /// [purgeTime] The last time this queue was purged. All tasks that were created before this time were purged. A queue can be purged using PurgeQueue, the [App Engine Task Queue SDK, or the Cloud Console](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue). Purge time will be truncated to the nearest microsecond. Purge time will be unset if the queue has never been purged.
  /// [rateLimits] Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts however they control how tasks are attempted in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc).
  /// [retryConfig] Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  /// [state] The state of the queue. `state` can only be changed by called PauseQueue, ResumeQueue, or uploading [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref). UpdateQueue cannot be used to change `state`.
  /// [stats] The realtime, informational statistics for a queue. In order to receive the statistics the caller should include this field in the FieldMask.
  /// [taskTtl] The maximum amount of time that a task will be retained in this queue. Queues created by Cloud Tasks have a default `task_ttl` of 31 days. After a task has lived for `task_ttl`, the task will be deleted regardless of whether it was dispatched or not. The `task_ttl` for queues created via queue.yaml/xml is equal to the maximum duration because there is a [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for these queues. To view the maximum valid duration, see the documentation for Duration.
  /// [tombstoneTtl] The task tombstone time to live (TTL). After a task is deleted or completed, the task's tombstone is retained for the length of time specified by `tombstone_ttl`. The tombstone is used by task de-duplication; another task with the same name can't be created until the tombstone has expired. For more information about task de-duplication, see the documentation for CreateTaskRequest. Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
  const GetQueueCloudtasksV2beta2Result({
    this.appEngineHttpTarget,
    this.httpTarget,
    this.name,
    this.pullTarget,
    this.purgeTime,
    this.rateLimits,
    this.retryConfig,
    this.state,
    this.stats,
    this.taskTtl,
    this.tombstoneTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineHttpTarget': ?appEngineHttpTarget?.toMap(),
      'httpTarget': ?httpTarget?.toMap(),
      'name': ?name,
      'pullTarget': ?pullTarget,
      'purgeTime': ?purgeTime,
      'rateLimits': ?rateLimits?.toMap(),
      'retryConfig': ?retryConfig?.toMap(),
      'state': ?state,
      'stats': ?stats?.toMap(),
      'taskTtl': ?taskTtl,
      'tombstoneTtl': ?tombstoneTtl,
    };
  }

  factory GetQueueCloudtasksV2beta2Result.fromMap(Map<String, dynamic> map) {
    return GetQueueCloudtasksV2beta2Result(
      appEngineHttpTarget: (() { final guardedValue = map['appEngineHttpTarget']; if (guardedValue == null) return null; return AppEngineHttpTargetResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      httpTarget: (() { final guardedValue = map['httpTarget']; if (guardedValue == null) return null; return HttpTargetResponseCloudtasksV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pullTarget: (() { final guardedValue = map['pullTarget']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      purgeTime: (() { final guardedValue = map['purgeTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rateLimits: (() { final guardedValue = map['rateLimits']; if (guardedValue == null) return null; return RateLimitsResponseCloudtasksV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      retryConfig: (() { final guardedValue = map['retryConfig']; if (guardedValue == null) return null; return RetryConfigResponseCloudtasksV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stats: (() { final guardedValue = map['stats']; if (guardedValue == null) return null; return QueueStatsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      taskTtl: (() { final guardedValue = map['taskTtl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tombstoneTtl: (() { final guardedValue = map['tombstoneTtl']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
