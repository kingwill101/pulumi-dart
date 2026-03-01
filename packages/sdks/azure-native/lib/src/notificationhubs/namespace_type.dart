/// Defines values for NamespaceType.
enum NamespaceType {
  messaging("Messaging"),
  notificationHub("NotificationHub");

  const NamespaceType(this.value);
  final String value;

  static NamespaceType fromValue(String value) {
    for (final item in NamespaceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NamespaceType value: $value');
  }
}

