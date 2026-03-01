/// Serving status of this application.
enum AppServingStatus {
  unspecified("UNSPECIFIED"),
  serving("SERVING"),
  userDisabled("USER_DISABLED"),
  systemDisabled("SYSTEM_DISABLED");

  const AppServingStatus(this.value);
  final String value;

  static AppServingStatus fromValue(String value) {
    for (final item in AppServingStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppServingStatus value: $value');
  }
}

