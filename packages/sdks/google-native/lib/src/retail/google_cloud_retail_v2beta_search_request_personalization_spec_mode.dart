import 'package:pulumi/pulumi.dart' as pulumi;

/// Defaults to Mode.AUTO.
enum GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  auto("AUTO"),
  disabled("DISABLED");

  const GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode fromValue(String value) {
    for (final item in GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode value: $value');
  }
}
