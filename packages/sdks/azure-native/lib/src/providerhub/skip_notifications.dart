/// Whether notifications should be skipped.
enum SkipNotifications {
  unspecified("Unspecified"),
  enabled("Enabled"),
  disabled("Disabled");

  const SkipNotifications(this.value);
  final String value;

  static SkipNotifications fromValue(String value) {
    for (final item in SkipNotifications.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkipNotifications value: $value');
  }
}

