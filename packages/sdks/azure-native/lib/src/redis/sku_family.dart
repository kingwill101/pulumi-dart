import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU family to use. Valid values: (C, P). (C = Basic/Standard, P = Premium).
enum SkuFamily implements pulumi.PulumiEnum<String> {
  c("C"),
  p("P");

  const SkuFamily(this.wireValue);
  @override
  final String wireValue;

  static SkuFamily fromValue(String value) {
    for (final item in SkuFamily.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SkuFamily value: $value');
  }
}
