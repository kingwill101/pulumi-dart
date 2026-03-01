/// Frequency at which the customer will be billed.
enum RatePlanBillingPeriod {
  billingPeriodUnspecified("BILLING_PERIOD_UNSPECIFIED"),
  weekly("WEEKLY"),
  monthly("MONTHLY");

  const RatePlanBillingPeriod(this.value);
  final String value;

  static RatePlanBillingPeriod fromValue(String value) {
    for (final item in RatePlanBillingPeriod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RatePlanBillingPeriod value: $value');
  }
}

