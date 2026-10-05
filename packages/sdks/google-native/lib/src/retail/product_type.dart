import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The type of the product. Default to Catalog.product_level_config.ingestion_product_type if unset.
enum ProductType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  variant("VARIANT"),
  collection("COLLECTION");

  const ProductType(this.wireValue);
  @override
  final String wireValue;

  static ProductType fromValue(String value) {
    for (final item in ProductType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductType value: $value');
  }
}
