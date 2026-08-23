/// Pricing model used for consumption-based charges.
enum RatePlanConsumptionPricingType {
  consumptionPricingTypeUnspecified("CONSUMPTION_PRICING_TYPE_UNSPECIFIED"),
  fixedPerUnit("FIXED_PER_UNIT"),
  banded("BANDED"),
  tiered("TIERED"),
  stairstep("STAIRSTEP");

  const RatePlanConsumptionPricingType(this.wireValue);
  final String wireValue;

  static RatePlanConsumptionPricingType fromValue(String value) {
    for (final item in RatePlanConsumptionPricingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RatePlanConsumptionPricingType value: $value');
  }
}
