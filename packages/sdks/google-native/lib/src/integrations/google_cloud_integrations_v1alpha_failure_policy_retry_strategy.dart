/// Defines what happens to the task upon failure.
enum GoogleCloudIntegrationsV1alphaFailurePolicyRetryStrategy {
  retryStrategyUnspecified("RETRY_STRATEGY_UNSPECIFIED"),
  ignore("IGNORE"),
  none("NONE"),
  fatal("FATAL"),
  fixedInterval("FIXED_INTERVAL"),
  linearBackoff("LINEAR_BACKOFF"),
  exponentialBackoff("EXPONENTIAL_BACKOFF"),
  restartIntegrationWithBackoff("RESTART_INTEGRATION_WITH_BACKOFF");

  const GoogleCloudIntegrationsV1alphaFailurePolicyRetryStrategy(
    this.wireValue,
  );
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaFailurePolicyRetryStrategy fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudIntegrationsV1alphaFailurePolicyRetryStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudIntegrationsV1alphaFailurePolicyRetryStrategy value: $value',
    );
  }
}
