import 'package:pulumi/pulumi.dart' as pulumi;

/// Notification options.
enum NotificationOptions implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  none("None"),
  emitSpendingLimit("EmitSpendingLimit");

  const NotificationOptions(this.wireValue);
  @override
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
