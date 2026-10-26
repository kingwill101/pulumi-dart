import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The type of basis used to determine if spend has passed the threshold. Behavior defaults to CURRENT_SPEND if not set.
enum GoogleCloudBillingBudgetsV1ThresholdRuleSpendBasis implements pulumi.PulumiEnum<String> {
  basisUnspecified("BASIS_UNSPECIFIED"),
  currentSpend("CURRENT_SPEND"),
  forecastedSpend("FORECASTED_SPEND");

  const GoogleCloudBillingBudgetsV1ThresholdRuleSpendBasis(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudBillingBudgetsV1ThresholdRuleSpendBasis fromValue(String value) {
    for (final item in GoogleCloudBillingBudgetsV1ThresholdRuleSpendBasis.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudBillingBudgetsV1ThresholdRuleSpendBasis value: $value');
  }
}
