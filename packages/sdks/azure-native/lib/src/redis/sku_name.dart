import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of Redis cache to deploy. Valid values: (Basic, Standard, Premium)
enum SkuName implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  standard("Standard"),
  premium("Premium");

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
