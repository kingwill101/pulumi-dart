/// Capacity commitment commitment plan.
enum CapacityCommitmentPlan {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  flex("FLEX"),
  flexFlatRate("FLEX_FLAT_RATE"),
  trial("TRIAL"),
  monthly("MONTHLY"),
  monthlyFlatRate("MONTHLY_FLAT_RATE"),
  annual("ANNUAL"),
  annualFlatRate("ANNUAL_FLAT_RATE"),
  threeYear("THREE_YEAR"),
  none("NONE");

  const CapacityCommitmentPlan(this.wireValue);
  final String wireValue;

  static CapacityCommitmentPlan fromValue(String value) {
    for (final item in CapacityCommitmentPlan.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityCommitmentPlan value: $value');
  }
}

