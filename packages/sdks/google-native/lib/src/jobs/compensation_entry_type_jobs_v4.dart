/// Compensation type. Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
enum CompensationEntryTypeJobsV4 {
  compensationTypeUnspecified("COMPENSATION_TYPE_UNSPECIFIED"),
  base("BASE"),
  bonus("BONUS"),
  signingBonus("SIGNING_BONUS"),
  equity("EQUITY"),
  profitSharing("PROFIT_SHARING"),
  commissions("COMMISSIONS"),
  tips("TIPS"),
  otherCompensationType("OTHER_COMPENSATION_TYPE");

  const CompensationEntryTypeJobsV4(this.wireValue);
  final String wireValue;

  static CompensationEntryTypeJobsV4 fromValue(String value) {
    for (final item in CompensationEntryTypeJobsV4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompensationEntryTypeJobsV4 value: $value');
  }
}
