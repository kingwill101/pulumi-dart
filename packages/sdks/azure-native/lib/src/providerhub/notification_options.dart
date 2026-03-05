/// Notification options.
enum NotificationOptions {
  notSpecified("NotSpecified"),
  none("None"),
  emitSpendingLimit("EmitSpendingLimit");

  const NotificationOptions(this.wireValue);
  final String wireValue;

  static NotificationOptions fromValue(String value) {
    for (final item in NotificationOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationOptions value: $value');
  }
}

