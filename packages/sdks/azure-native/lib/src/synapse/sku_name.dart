import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU name.
enum SkuName implements pulumi.PulumiEnum<String> {
  valueComputeOptimized("Compute optimized"),
  valueStorageOptimized("Storage optimized");

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
