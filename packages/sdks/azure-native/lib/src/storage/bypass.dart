import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or None to bypass none of those traffics.
enum Bypass implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueLogging("Logging"),
  valueMetrics("Metrics"),
  valueAzureServices("AzureServices");

  const Bypass(this.wireValue);
  @override
  final String wireValue;

  static Bypass fromValue(String value) {
    for (final item in Bypass.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Bypass value: $value');
  }
}
