import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The type of the product. Default to Catalog.product_level_config.ingestion_product_type if unset.
enum ProductTypeRetailV2beta implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  variant("VARIANT"),
  collection("COLLECTION");

  const ProductTypeRetailV2beta(this.wireValue);
  @override
  final String wireValue;

  static ProductTypeRetailV2beta fromValue(String value) {
    for (final item in ProductTypeRetailV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductTypeRetailV2beta value: $value');
  }
}
