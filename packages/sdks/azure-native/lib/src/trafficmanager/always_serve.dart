import 'package:pulumi/pulumi.dart' as pulumi;

/// If Always Serve is enabled, probing for endpoint health will be disabled and endpoints will be included in the traffic routing method.
enum AlwaysServe implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const AlwaysServe(this.wireValue);
  @override
  final String wireValue;

  static AlwaysServe fromValue(String value) {
    for (final item in AlwaysServe.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlwaysServe value: $value');
  }
}
