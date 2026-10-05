import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of assertion to perform.
enum GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy implements pulumi.PulumiEnum<String> {
  assertionStrategyUnspecified("ASSERTION_STRATEGY_UNSPECIFIED"),
  assertSuccessfulExecution("ASSERT_SUCCESSFUL_EXECUTION"),
  assertFailedExecution("ASSERT_FAILED_EXECUTION"),
  assertNoExecution("ASSERT_NO_EXECUTION"),
  assertEquals("ASSERT_EQUALS"),
  assertNotEquals("ASSERT_NOT_EQUALS"),
  assertContains("ASSERT_CONTAINS"),
  assertCondition("ASSERT_CONDITION");

  const GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy value: $value');
  }
}
