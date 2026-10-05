import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Specifies the context of the model when it is used in predict requests. Can only be set for the `frequently-bought-together` type. If it isn't specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
enum GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType implements pulumi.PulumiEnum<String> {
  contextProductsTypeUnspecified("CONTEXT_PRODUCTS_TYPE_UNSPECIFIED"),
  singleContextProduct("SINGLE_CONTEXT_PRODUCT"),
  multipleContextProducts("MULTIPLE_CONTEXT_PRODUCTS");

  const GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType fromValue(String value) {
    for (final item in GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType value: $value');
  }
}
