import 'package:pulumi/pulumi.dart' as pulumi;

/// The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
enum SettingsPricingPlan implements pulumi.PulumiEnum<String> {
  sqlPricingPlanUnspecified("SQL_PRICING_PLAN_UNSPECIFIED"),
  package("PACKAGE"),
  perUse("PER_USE");

  const SettingsPricingPlan(this.wireValue);
  @override
  final String wireValue;

  static SettingsPricingPlan fromValue(String value) {
    for (final item in SettingsPricingPlan.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsPricingPlan value: $value');
  }
}
