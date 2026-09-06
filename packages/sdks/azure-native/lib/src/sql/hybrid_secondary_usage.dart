import 'package:pulumi/pulumi.dart' as pulumi;

/// Hybrid secondary usage. Possible values are 'Active' (default value) and 'Passive' (customer uses the secondary as Passive DR).
enum HybridSecondaryUsage implements pulumi.PulumiEnum<String> {
  valueActive("Active"),
  valuePassive("Passive");

  const HybridSecondaryUsage(this.wireValue);
  @override
  final String wireValue;

  static HybridSecondaryUsage fromValue(String value) {
    for (final item in HybridSecondaryUsage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HybridSecondaryUsage value: $value');
  }
}
