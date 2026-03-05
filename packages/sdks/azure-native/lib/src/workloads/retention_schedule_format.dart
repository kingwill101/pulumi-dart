/// Retention schedule format for yearly retention policy.
enum RetentionScheduleFormat {
  valueInvalid("Invalid"),
  valueDaily("Daily"),
  valueWeekly("Weekly");

  const RetentionScheduleFormat(this.wireValue);
  final String wireValue;

  static RetentionScheduleFormat fromValue(String value) {
    for (final item in RetentionScheduleFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RetentionScheduleFormat value: $value');
  }
}

