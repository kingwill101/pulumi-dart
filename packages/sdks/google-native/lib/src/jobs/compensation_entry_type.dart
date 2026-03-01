/// Optional. Compensation type. Default is CompensationUnit.COMPENSATION_TYPE_UNSPECIFIED.
enum CompensationEntryType {
  compensationTypeUnspecified("COMPENSATION_TYPE_UNSPECIFIED"),
  base("BASE"),
  bonus("BONUS"),
  signingBonus("SIGNING_BONUS"),
  equity("EQUITY"),
  profitSharing("PROFIT_SHARING"),
  commissions("COMMISSIONS"),
  tips("TIPS"),
  otherCompensationType("OTHER_COMPENSATION_TYPE");

  const CompensationEntryType(this.value);
  final String value;

  static CompensationEntryType fromValue(String value) {
    for (final item in CompensationEntryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompensationEntryType value: $value');
  }
}

