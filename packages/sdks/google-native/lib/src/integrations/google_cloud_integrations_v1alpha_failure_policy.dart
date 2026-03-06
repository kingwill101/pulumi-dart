// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_failure_policy_retry_strategy.dart';

/// Policy that defines the task retry logic and failure type. If no FailurePolicy is defined for a task, all its dependent tasks will not be executed (i.e, a `retry_strategy` of NONE will be applied).
class GoogleCloudIntegrationsV1alphaFailurePolicy {
  /// Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF. Defines the initial interval in seconds for backoff.
  final pulumi.Input<String>? intervalTime;
  /// Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF. Defines the number of times the task will be retried if failed.
  final pulumi.Input<int>? maxRetries;
  /// Defines what happens to the task upon failure.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaFailurePolicyRetryStrategy>? retryStrategy;

  /// Creates a new [GoogleCloudIntegrationsV1alphaFailurePolicy].
  /// [intervalTime] Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF. Defines the initial interval in seconds for backoff.
  /// [maxRetries] Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF. Defines the number of times the task will be retried if failed.
  /// [retryStrategy] Defines what happens to the task upon failure.
  const GoogleCloudIntegrationsV1alphaFailurePolicy({
    this.intervalTime,
    this.maxRetries,
    this.retryStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalTime': ?intervalTime,
      'maxRetries': ?maxRetries,
      'retryStrategy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaFailurePolicyRetryStrategy, String>(retryStrategy, (value) => value.wireValue),
    };
  }

  factory GoogleCloudIntegrationsV1alphaFailurePolicy.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaFailurePolicy(
      intervalTime: (() { final guardedValue = map['intervalTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retryStrategy: (() { final guardedValue = map['retryStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaFailurePolicyRetryStrategy.fromValue(guardedValue as String)); })(),
    );
  }
}

