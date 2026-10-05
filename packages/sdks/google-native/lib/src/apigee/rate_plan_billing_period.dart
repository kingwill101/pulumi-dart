import 'package:pulumi/pulumi.dart' as pulumi;

/// Frequency at which the customer will be billed.
enum RatePlanBillingPeriod implements pulumi.PulumiEnum<String> {
  billingPeriodUnspecified("BILLING_PERIOD_UNSPECIFIED"),
  weekly("WEEKLY"),
  monthly("MONTHLY");

  const RatePlanBillingPeriod(this.wireValue);
  @override
  final String wireValue;

  static RatePlanBillingPeriod fromValue(String value) {
    for (final item in RatePlanBillingPeriod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RatePlanBillingPeriod value: $value');
  }
}
