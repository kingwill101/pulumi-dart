import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
enum GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED");

  const GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode fromValue(String value) {
    for (final item in GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecMode value: $value');
  }
}
