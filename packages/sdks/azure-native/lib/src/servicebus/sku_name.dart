/// Name of this SKU.
enum SkuName {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

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
