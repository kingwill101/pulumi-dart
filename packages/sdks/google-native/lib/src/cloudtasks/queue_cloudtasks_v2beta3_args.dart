// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_http_queue.dart';
import 'http_target_cloudtasks_v2beta3.dart';
import 'queue_type.dart';
import 'rate_limits_cloudtasks_v2beta3.dart';
import 'retry_config_cloudtasks_v2beta3.dart';
import 'stackdriver_logging_config_cloudtasks_v2beta3.dart';

/// {@template pulumi_cloudtasks_v2beta3_queue_cloudtasks_v2beta3_args_doc}
/// The set of arguments for Queue.
/// {@endtemplate}
/// {@macro pulumi_cloudtasks_v2beta3_queue_cloudtasks_v2beta3_args_doc}
class QueueCloudtasksV2beta3Args {
  /// AppEngineHttpQueue settings apply only to App Engine tasks in this queue. Http tasks are not affected by this proto.
  final pulumi.Input<AppEngineHttpQueue>? appEngineHttpQueue;
  /// Modifies HTTP target for HTTP tasks.
  final pulumi.Input<HttpTargetCloudtasksV2beta3>? httpTarget;
  final pulumi.Input<String>? location;
  /// Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts. However they control task attempts in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc). The queue's actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rate_limits, retry_config, and the queue's state. * System throttling due to `429` (Too Many Requests) or `503` (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.
  final pulumi.Input<RateLimitsCloudtasksV2beta3>? rateLimits;
  /// Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  final pulumi.Input<RetryConfigCloudtasksV2beta3>? retryConfig;
  /// Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/). If this field is unset, then no logs are written.
  final pulumi.Input<StackdriverLoggingConfigCloudtasksV2beta3>? stackdriverLoggingConfig;
  /// The maximum amount of time that a task will be retained in this queue. After a task has lived for `task_ttl`, the task will be deleted regardless of whether it was dispatched or not. The minimum value is 10 days. The maximum value is 10 years. The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). Queues created by Cloud Tasks have a default `task_ttl` of 31 days. . Queues created by queue.yaml/xml have a fixed `task_ttl` of the maximum duration, because there is a [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for these queues.
  final pulumi.Input<String>? taskTtl;
  /// The task tombstone time to live (TTL). After a task is deleted or executed, the task's tombstone is retained for the length of time specified by `tombstone_ttl`. The tombstone is used by task de-duplication; another task with the same name can't be created until the tombstone has expired. For more information about task de-duplication, see the documentation for CreateTaskRequest. The minimum value is 1 hour. The maximum value is 9 days. The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
  final pulumi.Input<String>? tombstoneTtl;
  /// Immutable. The type of a queue (push or pull). `Queue.type` is an immutable property of the queue that is set at the queue creation time. When left unspecified, the default value of `PUSH` is selected.
  final pulumi.Input<QueueType>? type;

  /// Creates a new [QueueCloudtasksV2beta3Args].
  /// [appEngineHttpQueue] AppEngineHttpQueue settings apply only to App Engine tasks in this queue. Http tasks are not affected by this proto.
  /// [httpTarget] Modifies HTTP target for HTTP tasks.
  /// [location] Optional.
  /// [name] Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must have the following format: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the queue's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or hyphens (-). The maximum length is 100 characters.
  /// [project] Optional.
  /// [rateLimits] Rate limits for task dispatches. rate_limits and retry_config are related because they both control task attempts. However they control task attempts in different ways: * rate_limits controls the total rate of dispatches from a queue (i.e. all traffic dispatched from the queue, regardless of whether the dispatch is from a first attempt or a retry). * retry_config controls what happens to particular a task after its first attempt fails. That is, retry_config controls task retries (the second attempt, third attempt, etc). The queue's actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rate_limits, retry_config, and the queue's state. * System throttling due to `429` (Too Many Requests) or `503` (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.
  /// [retryConfig] Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-level retry settings apply to all tasks in the queue that were created using Cloud Tasks. Retry settings cannot be set on individual tasks. * For tasks created using the App Engine SDK: the queue-level retry settings apply to all tasks in the queue which do not have retry settings explicitly set on the task and were created by the App Engine SDK. See [App Engine documentation](https://cloud.google.com/appengine/docs/standard/python/taskqueue/push/retrying-tasks).
  /// [stackdriverLoggingConfig] Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/). If this field is unset, then no logs are written.
  /// [taskTtl] The maximum amount of time that a task will be retained in this queue. After a task has lived for `task_ttl`, the task will be deleted regardless of whether it was dispatched or not. The minimum value is 10 days. The maximum value is 10 years. The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). Queues created by Cloud Tasks have a default `task_ttl` of 31 days. . Queues created by queue.yaml/xml have a fixed `task_ttl` of the maximum duration, because there is a [storage quota](https://cloud.google.com/appengine/quotas#Task_Queue) for these queues.
  /// [tombstoneTtl] The task tombstone time to live (TTL). After a task is deleted or executed, the task's tombstone is retained for the length of time specified by `tombstone_ttl`. The tombstone is used by task de-duplication; another task with the same name can't be created until the tombstone has expired. For more information about task de-duplication, see the documentation for CreateTaskRequest. The minimum value is 1 hour. The maximum value is 9 days. The value must be given as a string that indicates the length of time (in seconds) followed by `s` (for "seconds"). For more information on the format, see the documentation for [Duration](https://protobuf.dev/reference/protobuf/google.protobuf/#duration). Queues created by Cloud Tasks have a default `tombstone_ttl` of 1 hour.
  /// [type] Immutable. The type of a queue (push or pull). `Queue.type` is an immutable property of the queue that is set at the queue creation time. When left unspecified, the default value of `PUSH` is selected.
  QueueCloudtasksV2beta3Args({
    this.appEngineHttpQueue,
    this.httpTarget,
    this.location,
    this.name,
    this.project,
    this.rateLimits,
    this.retryConfig,
    this.stackdriverLoggingConfig,
    this.taskTtl,
    this.tombstoneTtl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineHttpQueue': ?pulumi.Input.mapOptionalInputValue<AppEngineHttpQueue, Map<String, dynamic>>(appEngineHttpQueue, (value) => value.toMap()),
      'httpTarget': ?pulumi.Input.mapOptionalInputValue<HttpTargetCloudtasksV2beta3, Map<String, dynamic>>(httpTarget, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rateLimits': ?pulumi.Input.mapOptionalInputValue<RateLimitsCloudtasksV2beta3, Map<String, dynamic>>(rateLimits, (value) => value.toMap()),
      'retryConfig': ?pulumi.Input.mapOptionalInputValue<RetryConfigCloudtasksV2beta3, Map<String, dynamic>>(retryConfig, (value) => value.toMap()),
      'stackdriverLoggingConfig': ?pulumi.Input.mapOptionalInputValue<StackdriverLoggingConfigCloudtasksV2beta3, Map<String, dynamic>>(stackdriverLoggingConfig, (value) => value.toMap()),
      'taskTtl': ?taskTtl,
      'tombstoneTtl': ?tombstoneTtl,
      'type': ?pulumi.Input.mapOptionalInputValue<QueueType, String>(type, (value) => value.value),
    };
  }

  factory QueueCloudtasksV2beta3Args.fromMap(Map<String, dynamic> map) {
    return QueueCloudtasksV2beta3Args(
      appEngineHttpQueue: map['appEngineHttpQueue'] == null ? null : (AppEngineHttpQueue.fromMap((map['appEngineHttpQueue'] as Map).cast<String, dynamic>())).input(),
      httpTarget: map['httpTarget'] == null ? null : (HttpTargetCloudtasksV2beta3.fromMap((map['httpTarget'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      rateLimits: map['rateLimits'] == null ? null : (RateLimitsCloudtasksV2beta3.fromMap((map['rateLimits'] as Map).cast<String, dynamic>())).input(),
      retryConfig: map['retryConfig'] == null ? null : (RetryConfigCloudtasksV2beta3.fromMap((map['retryConfig'] as Map).cast<String, dynamic>())).input(),
      stackdriverLoggingConfig: map['stackdriverLoggingConfig'] == null ? null : (StackdriverLoggingConfigCloudtasksV2beta3.fromMap((map['stackdriverLoggingConfig'] as Map).cast<String, dynamic>())).input(),
      taskTtl: map['taskTtl'] == null ? null : (map['taskTtl'] as String).input(),
      tombstoneTtl: map['tombstoneTtl'] == null ? null : (map['tombstoneTtl'] as String).input(),
      type: map['type'] == null ? null : (QueueType.fromValue(map['type'] as String)).input(),
    );
  }
}

