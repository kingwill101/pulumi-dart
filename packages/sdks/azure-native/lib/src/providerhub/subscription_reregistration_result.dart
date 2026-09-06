import 'package:pulumi/pulumi.dart' as pulumi;

/// The subscription reregistration result.
enum SubscriptionReregistrationResult implements pulumi.PulumiEnum<String> {
  notApplicable("NotApplicable"),
  conditionalUpdate("ConditionalUpdate"),
  forcedUpdate("ForcedUpdate"),
  failed("Failed");

  const SubscriptionReregistrationResult(this.wireValue);
  @override
  final String wireValue;

  static SubscriptionReregistrationResult fromValue(String value) {
    for (final item in SubscriptionReregistrationResult.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionReregistrationResult value: $value');
  }
}
