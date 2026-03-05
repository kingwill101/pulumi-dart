/// Specifies whether subnets are pre-attached with an NSG
enum PreconfiguredNSG {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const PreconfiguredNSG(this.wireValue);
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

