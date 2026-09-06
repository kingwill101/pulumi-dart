import 'package:pulumi/pulumi.dart' as pulumi;

/// The notification type.
enum NotificationType implements pulumi.PulumiEnum<String> {
  unspecified("Unspecified"),
  subscriptionNotification("SubscriptionNotification");

  const NotificationType(this.wireValue);
  @override
  final String wireValue;

  static NotificationType fromValue(String value) {
    for (final item in NotificationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationType value: $value');
  }
}
