// ignore_for_file: unused_element, unnecessary_cast

import 'app_engine_routing_response.dart';
import 'http_target_response.dart';
import 'rate_limits_response.dart';
import 'retry_config_response.dart';
import 'stackdriver_logging_config_response.dart';

/// Result data returned by getQueue.
class GetQueueResult {
  /// Overrides for task-level app_engine_routing. These settings apply only to App Engine tasks in this queue. Http tasks are not affected. If set, `app_engine_routing_override` is used for all App Engine tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  final AppEngineRoutingResponse appEngineRoutingOverride;

  /// Modifies HTTP target for HTTP tasks.
  final HttpTargetResponse httpTarget;

  /// Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  final String name;

  /// The last time this queue was purged. All tasks that were created before this time were purged. A queue can be purged using PurgeQueue, the [App Engine Task Queue SDK, or the Cloud Console](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue). Purge time will be truncated to the nearest microsecond. Purge time will be unset if the queue has never been purged.
  final String purgeTime;

  /// Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts. However they control task attempts in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc). The queue's actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rate_limits, retry_config, and the queue's state. * System throttling due to `429` (Too Many Requests) or `503` (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.
  final RateLimitsResponse rateLimits;

  /// Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  final RetryConfigResponse retryConfig;

  /// Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/). If this field is unset, then no logs are written.
  final StackdriverLoggingConfigResponse stackdriverLoggingConfig;

  /// The state of the queue. `state` can only be changed by calling PauseQueue, ResumeQueue, or uploading [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref). UpdateQueue cannot be used to change `state`.
  final String state;

  /// Creates a new [GetQueueResult].
  /// [appEngineRoutingOverride] Overrides for task-level app_engine_routing. These settings apply only to App Engine tasks in this queue. Http tasks are not affected. If set, `app_engine_routing_override` is used for all App Engine tasks in the queue, no matter what the setting is for the task-level app_engine_routing.
  /// [httpTarget] Modifies HTTP target for HTTP tasks.
  /// [name] Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  /// [purgeTime] The last time this queue was purged. All tasks that were created before this time were purged. A queue can be purged using PurgeQueue, the [App Engine Task Queue SDK, or the Cloud Console](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/deleting-tasks-and-queues#purging_all_tasks_from_a_queue). Purge time will be truncated to the nearest microsecond. Purge time will be unset if the queue has never been purged.
  /// [rateLimits] Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts. However they control task attempts in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc). The queue's actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rate_limits, retry_config, and the queue's state. * System throttling due to `429` (Too Many Requests) or `503` (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.
  /// [retryConfig] Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  /// [stackdriverLoggingConfig] Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/). If this field is unset, then no logs are written.
  /// [state] The state of the queue. `state` can only be changed by calling PauseQueue, ResumeQueue, or uploading [queue.yaml/xml](https://cloud.google.com/appengine/docs/python/config/queueref). UpdateQueue cannot be used to change `state`.
  GetQueueResult({
    required this.appEngineRoutingOverride,
    required this.httpTarget,
    required this.name,
    required this.purgeTime,
    required this.rateLimits,
    required this.retryConfig,
    required this.stackdriverLoggingConfig,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineRoutingOverride': appEngineRoutingOverride.toMap(),
      'httpTarget': httpTarget.toMap(),
      'name': name,
      'purgeTime': purgeTime,
      'rateLimits': rateLimits.toMap(),
      'retryConfig': retryConfig.toMap(),
      'stackdriverLoggingConfig': stackdriverLoggingConfig.toMap(),
      'state': state,
    };
  }

  factory GetQueueResult.fromMap(Map<String, dynamic> map) {
    return GetQueueResult(
      appEngineRoutingOverride: AppEngineRoutingResponse.fromMap(
        (map['appEngineRoutingOverride']! as Map).cast<String, dynamic>(),
      ),
      httpTarget: HttpTargetResponse.fromMap(
        (map['httpTarget']! as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      purgeTime: map['purgeTime'] as String,
      rateLimits: RateLimitsResponse.fromMap(
        (map['rateLimits']! as Map).cast<String, dynamic>(),
      ),
      retryConfig: RetryConfigResponse.fromMap(
        (map['retryConfig']! as Map).cast<String, dynamic>(),
      ),
      stackdriverLoggingConfig: StackdriverLoggingConfigResponse.fromMap(
        (map['stackdriverLoggingConfig']! as Map).cast<String, dynamic>(),
      ),
      state: map['state'] as String,
    );
  }
}
