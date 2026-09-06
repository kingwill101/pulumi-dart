import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether subnets are pre-attached with an NSG
enum PreconfiguredNSG implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const PreconfiguredNSG(this.wireValue);
  @override
  final String wireValue;

  static PreconfiguredNSG fromValue(String value) {
    for (final item in PreconfiguredNSG.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreconfiguredNSG value: $value');
  }
}
