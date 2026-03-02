// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The execution options of a job step.
class JobStepExecutionOptionsResponse {
  /// Initial delay between retries for job step execution.
  final pulumi.Input<int>? initialRetryIntervalSeconds;
  /// The maximum amount of time to wait between retries for job step execution.
  final pulumi.Input<int>? maximumRetryIntervalSeconds;
  /// Maximum number of times the job step will be reattempted if the first attempt fails.
  final pulumi.Input<int>? retryAttempts;
  /// The backoff multiplier for the time between retries.
  final pulumi.Input<double>? retryIntervalBackoffMultiplier;
  /// Execution timeout for the job step.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [JobStepExecutionOptionsResponse].
  /// [initialRetryIntervalSeconds] Initial delay between retries for job step execution.
  /// [maximumRetryIntervalSeconds] The maximum amount of time to wait between retries for job step execution.
  /// [retryAttempts] Maximum number of times the job step will be reattempted if the first attempt fails.
  /// [retryIntervalBackoffMultiplier] The backoff multiplier for the time between retries.
  /// [timeoutSeconds] Execution timeout for the job step.
  JobStepExecutionOptionsResponse({
    this.initialRetryIntervalSeconds,
    this.maximumRetryIntervalSeconds,
    this.retryAttempts,
    this.retryIntervalBackoffMultiplier,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialRetryIntervalSeconds': ?initialRetryIntervalSeconds,
      'maximumRetryIntervalSeconds': ?maximumRetryIntervalSeconds,
      'retryAttempts': ?retryAttempts,
      'retryIntervalBackoffMultiplier': ?retryIntervalBackoffMultiplier,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory JobStepExecutionOptionsResponse.fromMap(Map<String, dynamic> map) {
    return JobStepExecutionOptionsResponse(
      initialRetryIntervalSeconds: map['initialRetryIntervalSeconds'] == null ? null : (map['initialRetryIntervalSeconds'] as int).input(),
      maximumRetryIntervalSeconds: map['maximumRetryIntervalSeconds'] == null ? null : (map['maximumRetryIntervalSeconds'] as int).input(),
      retryAttempts: map['retryAttempts'] == null ? null : (map['retryAttempts'] as int).input(),
      retryIntervalBackoffMultiplier: map['retryIntervalBackoffMultiplier'] == null ? null : (map['retryIntervalBackoffMultiplier'] as double).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds'] as int).input(),
    );
  }
}

