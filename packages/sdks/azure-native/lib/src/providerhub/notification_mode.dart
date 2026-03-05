/// The notification mode.
enum NotificationMode {
  notSpecified("NotSpecified"),
  eventHub("EventHub"),
  webHook("WebHook");

  const NotificationMode(this.wireValue);
  final String wireValue;

  static NotificationMode fromValue(String value) {
    for (final item in NotificationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationMode value: $value');
  }
}

