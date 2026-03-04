/// Whether notifications should be skipped.
enum SkipNotifications {
  unspecified("Unspecified"),
  enabled("Enabled"),
  disabled("Disabled");

  const SkipNotifications(this.wireValue);
  final String wireValue;

  static SkipNotifications fromValue(String value) {
    for (final item in SkipNotifications.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkipNotifications value: $value');
  }
}
