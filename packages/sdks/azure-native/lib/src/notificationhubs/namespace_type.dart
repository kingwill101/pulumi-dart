import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines values for NamespaceType.
enum NamespaceType implements pulumi.PulumiEnum<String> {
  messaging("Messaging"),
  notificationHub("NotificationHub");

  const NamespaceType(this.wireValue);
  @override
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
