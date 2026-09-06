import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of this SKU.
enum SkuName implements pulumi.PulumiEnum<String> {
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
