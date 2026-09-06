import 'package:pulumi/pulumi.dart' as pulumi;

/// Tier of the catalog. This cannot be changed after the catalog is created. If not provided, defaults to Basic.
enum CatalogTier implements pulumi.PulumiEnum<String> {
  basic("Basic");

  const CatalogTier(this.wireValue);
  @override
  final String wireValue;

  static CatalogTier fromValue(String value) {
    for (final item in CatalogTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CatalogTier value: $value');
  }
}
