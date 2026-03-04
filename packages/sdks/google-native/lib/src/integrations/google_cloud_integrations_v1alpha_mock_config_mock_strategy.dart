/// Mockstrategy defines how the particular task should be mocked during test execution
enum GoogleCloudIntegrationsV1alphaMockConfigMockStrategy {
  mockStrategyUnspecified("MOCK_STRATEGY_UNSPECIFIED"),
  noMockStrategy("NO_MOCK_STRATEGY"),
  specificMockStrategy("SPECIFIC_MOCK_STRATEGY"),
  failureMockStrategy("FAILURE_MOCK_STRATEGY"),
  skipMockStrategy("SKIP_MOCK_STRATEGY");

  const GoogleCloudIntegrationsV1alphaMockConfigMockStrategy(this.wireValue);
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaMockConfigMockStrategy fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudIntegrationsV1alphaMockConfigMockStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudIntegrationsV1alphaMockConfigMockStrategy value: $value',
    );
  }
}
