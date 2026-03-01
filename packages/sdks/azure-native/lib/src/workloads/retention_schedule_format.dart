/// Retention schedule format for yearly retention policy.
enum RetentionScheduleFormat {
  valueInvalid("Invalid"),
  valueDaily("Daily"),
  valueWeekly("Weekly");

  const RetentionScheduleFormat(this.value);
  final String value;

  static RetentionScheduleFormat fromValue(String value) {
    for (final item in RetentionScheduleFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RetentionScheduleFormat value: $value');
  }
}

