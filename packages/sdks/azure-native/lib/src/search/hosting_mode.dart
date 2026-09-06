import 'package:pulumi/pulumi.dart' as pulumi;

/// Applicable only for the standard3 SKU. You can set this property to enable up to 3 high density partitions that allow up to 1000 indexes, which is much higher than the maximum indexes allowed for any other SKU. For the standard3 SKU, the value is either 'Default' or 'HighDensity'. For all other SKUs, this value must be 'Default'.
enum HostingMode implements pulumi.PulumiEnum<String> {
  default_("Default"),
  highDensity("HighDensity");

  const HostingMode(this.wireValue);
  @override
  final String wireValue;

  static HostingMode fromValue(String value) {
    for (final item in HostingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostingMode value: $value');
  }
}
