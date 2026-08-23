// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy that defines the task retry logic and failure type. If no FailurePolicy is defined for a task, all its dependent tasks will not be executed (i.e, a `retry_strategy` of NONE will be applied).
class GoogleCloudIntegrationsV1alphaFailurePolicyResponse {
  /// Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF. Defines the initial interval in seconds for backoff.
  final pulumi.Input<String> intervalTime;
  /// Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF. Defines the number of times the task will be retried if failed.
  final pulumi.Input<int> maxRetries;
  /// Defines what happens to the task upon failure.
  final pulumi.Input<String> retryStrategy;

  /// Creates a new [GoogleCloudIntegrationsV1alphaFailurePolicyResponse].
  /// [intervalTime] Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF. Defines the initial interval in seconds for backoff.
  /// [maxRetries] Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_INTEGRATION_WITH_BACKOFF. Defines the number of times the task will be retried if failed.
  /// [retryStrategy] Defines what happens to the task upon failure.
  const GoogleCloudIntegrationsV1alphaFailurePolicyResponse({
    required this.intervalTime,
    required this.maxRetries,
    required this.retryStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalTime': intervalTime,
      'maxRetries': maxRetries,
      'retryStrategy': retryStrategy,
    };
  }

  factory GoogleCloudIntegrationsV1alphaFailurePolicyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaFailurePolicyResponse(
      intervalTime: pulumi.Input.fromValue(map['intervalTime'] as String),
      maxRetries: pulumi.Input.fromValue(map['maxRetries'] as int),
      retryStrategy: pulumi.Input.fromValue(map['retryStrategy'] as String),
    );
  }
}
