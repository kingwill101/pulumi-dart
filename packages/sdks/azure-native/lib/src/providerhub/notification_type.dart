/// The notification type.
enum NotificationType {
  unspecified("Unspecified"),
  subscriptionNotification("SubscriptionNotification");

  const NotificationType(this.value);
  final String value;

  static NotificationType fromValue(String value) {
    for (final item in NotificationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationType value: $value');
  }
}

