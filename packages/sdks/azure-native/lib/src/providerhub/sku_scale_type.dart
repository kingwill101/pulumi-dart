import 'package:pulumi/pulumi.dart' as pulumi;

/// The scale type.
enum SkuScaleType implements pulumi.PulumiEnum<String> {
  none("None"),
  manual("Manual"),
  automatic("Automatic");

  const SkuScaleType(this.wireValue);
  @override
  final String wireValue;

  static SkuScaleType fromValue(String value) {
    for (final item in SkuScaleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuScaleType value: $value');
  }
}
