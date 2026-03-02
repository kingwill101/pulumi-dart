// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rate limits. This message determines the maximum rate that tasks can be dispatched by a queue, regardless of whether the dispatch is a first task attempt or a retry. Note: The debugging command, RunTask, will run a task even if the queue has reached its RateLimits.
class RateLimits {
  /// The maximum number of concurrent tasks that Cloud Tasks allows to be dispatched for this queue. After this threshold has been reached, Cloud Tasks stops dispatching tasks until the number of concurrent requests decreases. If unspecified when the queue is created, Cloud Tasks will pick the default. The maximum allowed value is 5,000. This field has the same meaning as [max_concurrent_requests in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#max_concurrent_requests).
  final pulumi.Input<int>? maxConcurrentDispatches;
  /// The maximum rate at which tasks are dispatched from this queue. If unspecified when the queue is created, Cloud Tasks will pick the default. * The maximum allowed value is 500. This field has the same meaning as [rate in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#rate).
  final pulumi.Input<double>? maxDispatchesPerSecond;

  /// Creates a new [RateLimits].
  /// [maxConcurrentDispatches] The maximum number of concurrent tasks that Cloud Tasks allows to be dispatched for this queue. After this threshold has been reached, Cloud Tasks stops dispatching tasks until the number of concurrent requests decreases. If unspecified when the queue is created, Cloud Tasks will pick the default. The maximum allowed value is 5,000. This field has the same meaning as [max_concurrent_requests in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#max_concurrent_requests).
  /// [maxDispatchesPerSecond] The maximum rate at which tasks are dispatched from this queue. If unspecified when the queue is created, Cloud Tasks will pick the default. * The maximum allowed value is 500. This field has the same meaning as [rate in queue.yaml/xml](https://cloud.google.com/appengine/docs/standard/python/config/queueref#rate).
  RateLimits({
    this.maxConcurrentDispatches,
    this.maxDispatchesPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentDispatches': ?maxConcurrentDispatches,
      'maxDispatchesPerSecond': ?maxDispatchesPerSecond,
    };
  }

  factory RateLimits.fromMap(Map<String, dynamic> map) {
    return RateLimits(
      maxConcurrentDispatches: map['maxConcurrentDispatches'] == null ? null : (map['maxConcurrentDispatches']! as int).input(),
      maxDispatchesPerSecond: map['maxDispatchesPerSecond'] == null ? null : (map['maxDispatchesPerSecond']! as double).input(),
    );
  }
}

