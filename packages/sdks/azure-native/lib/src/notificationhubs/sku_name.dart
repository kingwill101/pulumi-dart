import 'package:pulumi/pulumi.dart' as pulumi;

/// Namespace SKU name.
enum SkuName implements pulumi.PulumiEnum<String> {
  free("Free"),
  basic("Basic"),
  standard("Standard");

  const SkuName(this.wireValue);
  @override
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
