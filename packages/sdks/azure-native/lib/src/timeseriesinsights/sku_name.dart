/// The name of this SKU.
enum SkuName {
  valueS1("S1"),
  valueS2("S2"),
  valueP1("P1"),
  valueL1("L1");

  const SkuName(this.wireValue);
  final String wireValue;

  static SkuName fromValue(String value) {
    for (final item in SkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuName value: $value');
  }
}
