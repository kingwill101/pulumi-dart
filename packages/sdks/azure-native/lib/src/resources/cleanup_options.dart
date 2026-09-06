import 'package:pulumi/pulumi.dart' as pulumi;

/// The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
enum CleanupOptions implements pulumi.PulumiEnum<String> {
  always("Always"),
  onSuccess("OnSuccess"),
  onExpiration("OnExpiration");

  const CleanupOptions(this.wireValue);
  @override
  final String wireValue;

  static CleanupOptions fromValue(String value) {
    for (final item in CleanupOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CleanupOptions value: $value');
  }
}
