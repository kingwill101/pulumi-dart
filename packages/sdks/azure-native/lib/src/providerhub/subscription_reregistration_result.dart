/// The subscription reregistration result.
enum SubscriptionReregistrationResult {
  notApplicable("NotApplicable"),
  conditionalUpdate("ConditionalUpdate"),
  forcedUpdate("ForcedUpdate"),
  failed("Failed");

  const SubscriptionReregistrationResult(this.wireValue);
  final String wireValue;

  static SubscriptionReregistrationResult fromValue(String value) {
    for (final item in SubscriptionReregistrationResult.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SubscriptionReregistrationResult value: $value',
    );
  }
}
