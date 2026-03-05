// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings that determine the retry behavior. By default, if a job does not complete successfully (meaning that an acknowledgement is not received from the handler, then it will be retried with exponential backoff according to the settings in RetryConfig.
class RetryConfigResponse {
  /// The maximum amount of time to wait before retrying a job after it fails. The default value of this field is 1 hour.
  final pulumi.Input<String> maxBackoffDuration;
  /// The time between retries will double `max_doublings` times. A job's retry interval starts at min_backoff_duration, then doubles `max_doublings` times, then increases linearly, and finally retries at intervals of max_backoff_duration up to retry_count times. For example, if min_backoff_duration is 10s, max_backoff_duration is 300s, and `max_doublings` is 3, then the job will first be retried in 10s. The retry interval will double three times, and then increase linearly by 2^3 * 10s. Finally, the job will retry at intervals of max_backoff_duration until the job has been attempted retry_count times. Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s, 240s, 300s, 300s, .... The default value of this field is 5.
  final pulumi.Input<int> maxDoublings;
  /// The time limit for retrying a failed job, measured from time when an execution was first attempted. If specified with retry_count, the job will be retried until both limits are reached. The default value for max_retry_duration is zero, which means retry duration is unlimited.
  final pulumi.Input<String> maxRetryDuration;
  /// The minimum amount of time to wait before retrying a job after it fails. The default value of this field is 5 seconds.
  final pulumi.Input<String> minBackoffDuration;
  /// The number of attempts that the system will make to run a job using the exponential backoff procedure described by max_doublings. The default value of retry_count is zero. If retry_count is 0, a job attempt will not be retried if it fails. Instead the Cloud Scheduler system will wait for the next scheduled execution time. Setting retry_count to 0 does not prevent failed jobs from running according to schedule after the failure. If retry_count is set to a non-zero number then Cloud Scheduler will retry failed attempts, using exponential backoff, retry_count times, or until the next scheduled execution time, whichever comes first. Values greater than 5 and negative values are not allowed.
  final pulumi.Input<int> retryCount;

  /// Creates a new [RetryConfigResponse].
  /// [maxBackoffDuration] The maximum amount of time to wait before retrying a job after it fails. The default value of this field is 1 hour.
  /// [maxDoublings] The time between retries will double `max_doublings` times. A job's retry interval starts at min_backoff_duration, then doubles `max_doublings` times, then increases linearly, and finally retries at intervals of max_backoff_duration up to retry_count times. For example, if min_backoff_duration is 10s, max_backoff_duration is 300s, and `max_doublings` is 3, then the job will first be retried in 10s. The retry interval will double three times, and then increase linearly by 2^3 * 10s. Finally, the job will retry at intervals of max_backoff_duration until the job has been attempted retry_count times. Thus, the requests will retry at 10s, 20s, 40s, 80s, 160s, 240s, 300s, 300s, .... The default value of this field is 5.
  /// [maxRetryDuration] The time limit for retrying a failed job, measured from time when an execution was first attempted. If specified with retry_count, the job will be retried until both limits are reached. The default value for max_retry_duration is zero, which means retry duration is unlimited.
  /// [minBackoffDuration] The minimum amount of time to wait before retrying a job after it fails. The default value of this field is 5 seconds.
  /// [retryCount] The number of attempts that the system will make to run a job using the exponential backoff procedure described by max_doublings. The default value of retry_count is zero. If retry_count is 0, a job attempt will not be retried if it fails. Instead the Cloud Scheduler system will wait for the next scheduled execution time. Setting retry_count to 0 does not prevent failed jobs from running according to schedule after the failure. If retry_count is set to a non-zero number then Cloud Scheduler will retry failed attempts, using exponential backoff, retry_count times, or until the next scheduled execution time, whichever comes first. Values greater than 5 and negative values are not allowed.
  RetryConfigResponse({
    required this.maxBackoffDuration,
    required this.maxDoublings,
    required this.maxRetryDuration,
    required this.minBackoffDuration,
    required this.retryCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxBackoffDuration': maxBackoffDuration,
      'maxDoublings': maxDoublings,
      'maxRetryDuration': maxRetryDuration,
      'minBackoffDuration': minBackoffDuration,
      'retryCount': retryCount,
    };
  }

  factory RetryConfigResponse.fromMap(Map<String, dynamic> map) {
    return RetryConfigResponse(
      maxBackoffDuration: pulumi.Input.fromValue(map['maxBackoffDuration'] as String),
      maxDoublings: pulumi.Input.fromValue(map['maxDoublings'] as int),
      maxRetryDuration: pulumi.Input.fromValue(map['maxRetryDuration'] as String),
      minBackoffDuration: pulumi.Input.fromValue(map['minBackoffDuration'] as String),
      retryCount: pulumi.Input.fromValue(map['retryCount'] as int),
    );
  }
}

