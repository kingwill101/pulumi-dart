/// The marketplace type.
enum MarketplaceType {
  valueNotSpecified("NotSpecified"),
  valueAddOn("AddOn"),
  valueBypass("Bypass"),
  valueStore("Store");

  const MarketplaceType(this.wireValue);
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
