import 'package:pulumi/pulumi.dart' as pulumi;

/// The tier of this particular SKU.
enum Tier implements pulumi.PulumiEnum<String> {
  valueStandard("Standard");

  const Tier(this.wireValue);
  @override
  final String wireValue;

  static Tier fromValue(String value) {
    for (final item in Tier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Tier value: $value');
  }
}
