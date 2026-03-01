/// The marketplace type.
enum MarketplaceType {
  valueNotSpecified("NotSpecified"),
  valueAddOn("AddOn"),
  valueBypass("Bypass"),
  valueStore("Store");

  const MarketplaceType(this.value);
  final String value;

  static MarketplaceType fromValue(String value) {
    for (final item in MarketplaceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MarketplaceType value: $value');
  }
}

