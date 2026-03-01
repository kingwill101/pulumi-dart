/// Retention duration type: days/weeks/months/years
/// Used only if TieringMode is set to TierAfter
enum RetentionDurationType {
  valueInvalid("Invalid"),
  valueDays("Days"),
  valueWeeks("Weeks"),
  valueMonths("Months"),
  valueYears("Years");

  const RetentionDurationType(this.value);
  final String value;

  static RetentionDurationType fromValue(String value) {
    for (final item in RetentionDurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RetentionDurationType value: $value');
  }
}

