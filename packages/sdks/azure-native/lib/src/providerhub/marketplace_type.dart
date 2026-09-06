import 'package:pulumi/pulumi.dart' as pulumi;

/// The marketplace type.
enum MarketplaceType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueAddOn("AddOn"),
  valueBypass("Bypass"),
  valueStore("Store");

  const MarketplaceType(this.wireValue);
  @override
  final String wireValue;

  static MarketplaceType fromValue(String value) {
    for (final item in MarketplaceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MarketplaceType value: $value');
  }
}
