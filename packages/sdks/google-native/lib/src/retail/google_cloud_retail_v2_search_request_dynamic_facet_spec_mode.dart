import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
enum GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED");

  const GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode fromValue(String value) {
    for (final item in GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2SearchRequestDynamicFacetSpecMode value: $value');
  }
}
