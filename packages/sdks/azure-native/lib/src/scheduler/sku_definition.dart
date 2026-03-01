/// Gets or set the SKU.
enum SkuDefinition {
  valueStandard("Standard"),
  valueFree("Free"),
  valueP10Premium("P10Premium"),
  valueP20Premium("P20Premium");

  const SkuDefinition(this.value);
  final String value;

  static SkuDefinition fromValue(String value) {
    for (final item in SkuDefinition.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuDefinition value: $value');
  }
}

