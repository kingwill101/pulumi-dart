/// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
enum RegionCommitmentPlan {
  invalid("INVALID"),
  thirtySixMonth("THIRTY_SIX_MONTH"),
  twelveMonth("TWELVE_MONTH");

  const RegionCommitmentPlan(this.value);
  final String value;

  static RegionCommitmentPlan fromValue(String value) {
    for (final item in RegionCommitmentPlan.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionCommitmentPlan value: $value');
  }
}

