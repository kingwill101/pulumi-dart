/// Defines values for NamespaceType.
enum NamespaceType {
  messaging("Messaging"),
  notificationHub("NotificationHub");

  const NamespaceType(this.wireValue);
  final String wireValue;

  static NamespaceType fromValue(String value) {
    for (final item in NamespaceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NamespaceType value: $value');
  }
}
