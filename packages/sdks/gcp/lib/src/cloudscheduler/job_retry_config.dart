// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobRetryConfig {
  /// The maximum amount of time to wait before retrying a job after it fails.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'.
  final pulumi.Input<String>? maxBackoffDuration;
  /// The time between retries will double maxDoublings times.
  /// A job's retry interval starts at minBackoffDuration,
  /// then doubles maxDoublings times, then increases linearly,
  /// and finally retries retries at intervals of maxBackoffDuration up to retryCount times.
  final pulumi.Input<int>? maxDoublings;
  /// The time limit for retrying a failed job, measured from time when an execution was first attempted.
  /// If specified with retryCount, the job will be retried until both limits are reached.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'.
  final pulumi.Input<String>? maxRetryDuration;
  /// The minimum amount of time to wait before retrying a job after it fails.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'.
  final pulumi.Input<String>? minBackoffDuration;
  /// The number of attempts that the system will make to run a
  /// job using the exponential backoff procedure described by maxDoublings.
  /// Values greater than 5 and negative values are not allowed.
  final pulumi.Input<int>? retryCount;

  /// Creates a new [JobRetryConfig].
  /// [maxBackoffDuration] The maximum amount of time to wait before retrying a job after it fails.
  /// [maxDoublings] The time between retries will double maxDoublings times.
  /// [maxRetryDuration] The time limit for retrying a failed job, measured from time when an execution was first attempted.
  /// [minBackoffDuration] The minimum amount of time to wait before retrying a job after it fails.
  /// [retryCount] The number of attempts that the system will make to run a
  JobRetryConfig({
    this.maxBackoffDuration,
    this.maxDoublings,
    this.maxRetryDuration,
    this.minBackoffDuration,
    this.retryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxBackoffDuration': ?maxBackoffDuration,
      'maxDoublings': ?maxDoublings,
      'maxRetryDuration': ?maxRetryDuration,
      'minBackoffDuration': ?minBackoffDuration,
      'retryCount': ?retryCount,
    };
  }

  factory JobRetryConfig.fromMap(Map<String, dynamic> map) {
    return JobRetryConfig(
      maxBackoffDuration: (() { final guardedValue = map['maxBackoffDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDoublings: (() { final guardedValue = map['maxDoublings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRetryDuration: (() { final guardedValue = map['maxRetryDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minBackoffDuration: (() { final guardedValue = map['minBackoffDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryCount: (() { final guardedValue = map['retryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

