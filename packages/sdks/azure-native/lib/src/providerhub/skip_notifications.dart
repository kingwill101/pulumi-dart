import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether notifications should be skipped.
enum SkipNotifications implements pulumi.PulumiEnum<String> {
  unspecified("Unspecified"),
  enabled("Enabled"),
  disabled("Disabled");

  const SkipNotifications(this.wireValue);
  @override
  final String wireValue;

  static SkipNotifications fromValue(String value) {
    for (final item in SkipNotifications.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkipNotifications value: $value');
  }
}
