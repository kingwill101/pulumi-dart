import 'package:pulumi/pulumi.dart' as pulumi;

/// Enabled by default. If highAvailability is disabled, the data set is not replicated. This affects the availability SLA, and increases the risk of data loss.
enum HighAvailability implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const HighAvailability(this.wireValue);
  @override
  final String wireValue;

  static HighAvailability fromValue(String value) {
    for (final item in HighAvailability.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HighAvailability value: $value');
  }
}
