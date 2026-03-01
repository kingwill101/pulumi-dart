/// The notification mode.
enum NotificationMode {
  notSpecified("NotSpecified"),
  eventHub("EventHub"),
  webHook("WebHook");

  const NotificationMode(this.value);
  final String value;

  static NotificationMode fromValue(String value) {
    for (final item in NotificationMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationMode value: $value');
  }
}

