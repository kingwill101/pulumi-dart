// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rate limits. This message determines the maximum rate that tasks can be dispatched by a queue, regardless of whether the dispatch is a first task attempt or a retry. Note: The debugging command, RunTask, will run a task even if the queue has reached its RateLimits.
class RateLimitsResponseCloudtasksV2beta3 {
  /// The max burst size. Max burst size limits how fast tasks in queue are processed when many tasks are in the queue and the rate is high. This field allows the queue to have a high rate so processing starts shortly after a task is enqueued, but still limits resource usage when many tasks are enqueued in a short period of time. The [token bucket](https://wikipedia.org/wiki/Token_Bucket) algorithm is used to control the rate of task dispatches. Each queue has a token bucket that holds tokens, up to the maximum specified by `max_burst_size`. Each time a task is dispatched, a token is removed from the bucket. Tasks will be dispatched until the queue's bucket runs out of tokens. The bucket will be continuously refilled with new tokens based on max_dispatches_per_second. The default value of `max_burst_size` is picked by Cloud Tasks based on the value of max_dispatches_per_second. The maximum value of `max_burst_size` is 500. For App Engine queues that were created or updated using `queue.yaml/xml`, `max_burst_size` is equal to [bucket_size](https://cloud.google.com/appengine/docs/standard/python/config/queueref#bucket_size). If UpdateQueue is called on a queue without explicitly setting a value for `max_burst_size`, `max_burst_size` value will get updated if UpdateQueue is updating max_dispatches_per_second.
  final pulumi.Input<int> maxBurstSize;

  /// The maximum number of concurrent tasks that Cloud Tasks allows to be dispatched for this queue. After this threshold has been reached, Cloud Tasks stops dispatching tasks until the number of concurrent requests decreases. If unspecified when the queue is created, Cloud Tasks will pick the default. The maximum allowed value is 5,000. This field has the same meaning as [max_concurrent_requests in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#max_concurrent_requests).
  final pulumi.Input<int> maxConcurrentDispatches;

  /// The maximum rate at which tasks are dispatched from this queue. If unspecified when the queue is created, Cloud Tasks will pick the default. * For App Engine queues, the maximum allowed value is 500. This field has the same meaning as [rate in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#rate).
  final pulumi.Input<double> maxDispatchesPerSecond;

  /// Creates a new [RateLimitsResponseCloudtasksV2beta3].
  /// [maxBurstSize] The max burst size. Max burst size limits how fast tasks in queue are processed when many tasks are in the queue and the rate is high. This field allows the queue to have a high rate so processing starts shortly after a task is enqueued, but still limits resource usage when many tasks are enqueued in a short period of time. The [token bucket](https://wikipedia.org/wiki/Token_Bucket) algorithm is used to control the rate of task dispatches. Each queue has a token bucket that holds tokens, up to the maximum specified by `max_burst_size`. Each time a task is dispatched, a token is removed from the bucket. Tasks will be dispatched until the queue's bucket runs out of tokens. The bucket will be continuously refilled with new tokens based on max_dispatches_per_second. The default value of `max_burst_size` is picked by Cloud Tasks based on the value of max_dispatches_per_second. The maximum value of `max_burst_size` is 500. For App Engine queues that were created or updated using `queue.yaml/xml`, `max_burst_size` is equal to [bucket_size](https://cloud.google.com/appengine/docs/standard/python/config/queueref#bucket_size). If UpdateQueue is called on a queue without explicitly setting a value for `max_burst_size`, `max_burst_size` value will get updated if UpdateQueue is updating max_dispatches_per_second.
  /// [maxConcurrentDispatches] The maximum number of concurrent tasks that Cloud Tasks allows to be dispatched for this queue. After this threshold has been reached, Cloud Tasks stops dispatching tasks until the number of concurrent requests decreases. If unspecified when the queue is created, Cloud Tasks will pick the default. The maximum allowed value is 5,000. This field has the same meaning as [max_concurrent_requests in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#max_concurrent_requests).
  /// [maxDispatchesPerSecond] The maximum rate at which tasks are dispatched from this queue. If unspecified when the queue is created, Cloud Tasks will pick the default. * For App Engine queues, the maximum allowed value is 500. This field has the same meaning as [rate in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#rate).
  RateLimitsResponseCloudtasksV2beta3({
    required this.maxBurstSize,
    required this.maxConcurrentDispatches,
    required this.maxDispatchesPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxBurstSize': maxBurstSize,
      'maxConcurrentDispatches': maxConcurrentDispatches,
      'maxDispatchesPerSecond': maxDispatchesPerSecond,
    };
  }

  factory RateLimitsResponseCloudtasksV2beta3.fromMap(
    Map<String, dynamic> map,
  ) {
    return RateLimitsResponseCloudtasksV2beta3(
      maxBurstSize: pulumi.Input.fromValue(map['maxBurstSize'] as int),
      maxConcurrentDispatches: pulumi.Input.fromValue(
        map['maxConcurrentDispatches'] as int,
      ),
      maxDispatchesPerSecond: pulumi.Input.fromValue(
        map['maxDispatchesPerSecond'] as double,
      ),
    );
  }
}
