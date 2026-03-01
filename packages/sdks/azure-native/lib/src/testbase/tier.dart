/// The tier of this particular SKU.
enum Tier {
  valueStandard("Standard");

  const Tier(this.value);
  final String value;

  static Tier fromValue(String value) {
    for (final item in Tier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Tier value: $value');
  }
}

