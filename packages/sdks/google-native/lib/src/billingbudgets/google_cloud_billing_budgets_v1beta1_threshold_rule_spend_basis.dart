/// Optional. The type of basis used to determine if spend has passed the threshold. Behavior defaults to CURRENT_SPEND if not set.
enum GoogleCloudBillingBudgetsV1beta1ThresholdRuleSpendBasis {
  basisUnspecified("BASIS_UNSPECIFIED"),
  currentSpend("CURRENT_SPEND"),
  forecastedSpend("FORECASTED_SPEND");

  const GoogleCloudBillingBudgetsV1beta1ThresholdRuleSpendBasis(this.wireValue);
  final String wireValue;

  static GoogleCloudBillingBudgetsV1beta1ThresholdRuleSpendBasis fromValue(String value) {
    for (final item in GoogleCloudBillingBudgetsV1beta1ThresholdRuleSpendBasis.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudBillingBudgetsV1beta1ThresholdRuleSpendBasis value: $value');
  }
}
