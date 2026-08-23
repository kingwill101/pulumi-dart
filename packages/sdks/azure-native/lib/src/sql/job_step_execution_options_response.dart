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
  const JobStepExecutionOptionsResponse({
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
      initialRetryIntervalSeconds: (() { final guardedValue = map['initialRetryIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maximumRetryIntervalSeconds: (() { final guardedValue = map['maximumRetryIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retryAttempts: (() { final guardedValue = map['retryAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retryIntervalBackoffMultiplier: (() { final guardedValue = map['retryIntervalBackoffMultiplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
