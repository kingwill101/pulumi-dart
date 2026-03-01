/// The scale type.
enum SkuScaleType {
  none("None"),
  manual("Manual"),
  automatic("Automatic");

  const SkuScaleType(this.value);
  final String value;

  static SkuScaleType fromValue(String value) {
    for (final item in SkuScaleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuScaleType value: $value');
  }
}

