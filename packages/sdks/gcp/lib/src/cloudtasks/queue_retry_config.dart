// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueRetryConfig {
  /// Number of attempts per task.
  /// Cloud Tasks will attempt the task maxAttempts times (that is, if
  /// the first attempt fails, then there will be maxAttempts - 1
  /// retries). Must be &gt;= -1.
  /// If unspecified when the queue is created, Cloud Tasks will pick
  /// the default.
  /// -1 indicates unlimited attempts.
  final pulumi.Input<int>? maxAttempts;
  /// A task will be scheduled for retry between minBackoff and
  /// maxBackoff duration after it fails, if the queue's RetryConfig
  /// specifies that the task should be retried.
  final pulumi.Input<String>? maxBackoff;
  /// The time between retries will double maxDoublings times.
  /// A task's retry interval starts at minBackoff, then doubles maxDoublings times,
  /// then increases linearly, and finally retries retries at intervals of maxBackoff
  /// up to maxAttempts times.
  final pulumi.Input<int>? maxDoublings;
  /// If positive, maxRetryDuration specifies the time limit for
  /// retrying a failed task, measured from when the task was first
  /// attempted. Once maxRetryDuration time has passed and the task has
  /// been attempted maxAttempts times, no further attempts will be
  /// made and the task will be deleted.
  /// If zero, then the task age is unlimited.
  final pulumi.Input<String>? maxRetryDuration;
  /// A task will be scheduled for retry between minBackoff and
  /// maxBackoff duration after it fails, if the queue's RetryConfig
  /// specifies that the task should be retried.
  final pulumi.Input<String>? minBackoff;

  /// Creates a new [QueueRetryConfig].
  /// [maxAttempts] Number of attempts per task.
  /// [maxBackoff] A task will be scheduled for retry between minBackoff and
  /// [maxDoublings] The time between retries will double maxDoublings times.
  /// [maxRetryDuration] If positive, maxRetryDuration specifies the time limit for
  /// [minBackoff] A task will be scheduled for retry between minBackoff and
  const QueueRetryConfig({
    this.maxAttempts,
    this.maxBackoff,
    this.maxDoublings,
    this.maxRetryDuration,
    this.minBackoff,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAttempts': ?maxAttempts,
      'maxBackoff': ?maxBackoff,
      'maxDoublings': ?maxDoublings,
      'maxRetryDuration': ?maxRetryDuration,
      'minBackoff': ?minBackoff,
    };
  }

  factory QueueRetryConfig.fromMap(Map<String, dynamic> map) {
    return QueueRetryConfig(
      maxAttempts: (() { final guardedValue = map['maxAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxBackoff: (() { final guardedValue = map['maxBackoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDoublings: (() { final guardedValue = map['maxDoublings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRetryDuration: (() { final guardedValue = map['maxRetryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minBackoff: (() { final guardedValue = map['minBackoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

