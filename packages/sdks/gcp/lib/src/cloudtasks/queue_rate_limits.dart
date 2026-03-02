// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueRateLimits {
  /// (Output)
  /// The max burst size.
  /// Max burst size limits how fast tasks in queue are processed when many tasks are
  /// in the queue and the rate is high. This field allows the queue to have a high
  /// rate so processing starts shortly after a task is enqueued, but still limits
  /// resource usage when many tasks are enqueued in a short period of time.
  final pulumi.Input<int>? maxBurstSize;
  /// The maximum number of concurrent tasks that Cloud Tasks allows to
  /// be dispatched for this queue. After this threshold has been
  /// reached, Cloud Tasks stops dispatching tasks until the number of
  /// concurrent requests decreases.
  final pulumi.Input<int>? maxConcurrentDispatches;
  /// The maximum rate at which tasks are dispatched from this queue.
  /// If unspecified when the queue is created, Cloud Tasks will pick the default.
  final pulumi.Input<double>? maxDispatchesPerSecond;

  /// Creates a new [QueueRateLimits].
  /// [maxBurstSize] (Output)
  /// [maxConcurrentDispatches] The maximum number of concurrent tasks that Cloud Tasks allows to
  /// [maxDispatchesPerSecond] The maximum rate at which tasks are dispatched from this queue.
  QueueRateLimits({
    this.maxBurstSize,
    this.maxConcurrentDispatches,
    this.maxDispatchesPerSecond,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxBurstSize': ?maxBurstSize,
      'maxConcurrentDispatches': ?maxConcurrentDispatches,
      'maxDispatchesPerSecond': ?maxDispatchesPerSecond,
    };
  }

  factory QueueRateLimits.fromMap(Map<String, dynamic> map) {
    return QueueRateLimits(
      maxBurstSize: map['maxBurstSize'] == null ? null : (map['maxBurstSize']! as int).input(),
      maxConcurrentDispatches: map['maxConcurrentDispatches'] == null ? null : (map['maxConcurrentDispatches']! as int).input(),
      maxDispatchesPerSecond: map['maxDispatchesPerSecond'] == null ? null : (map['maxDispatchesPerSecond']! as double).input(),
    );
  }
}

