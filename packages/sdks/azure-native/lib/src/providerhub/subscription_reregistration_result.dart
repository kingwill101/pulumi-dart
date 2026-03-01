/// The subscription reregistration result.
enum SubscriptionReregistrationResult {
  notApplicable("NotApplicable"),
  conditionalUpdate("ConditionalUpdate"),
  forcedUpdate("ForcedUpdate"),
  failed("Failed");

  const SubscriptionReregistrationResult(this.value);
  final String value;

  static SubscriptionReregistrationResult fromValue(String value) {
    for (final item in SubscriptionReregistrationResult.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionReregistrationResult value: $value');
  }
}

