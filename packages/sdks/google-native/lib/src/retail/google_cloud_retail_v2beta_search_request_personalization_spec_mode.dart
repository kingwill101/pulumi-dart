/// Defaults to Mode.AUTO.
enum GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  auto("AUTO"),
  disabled("DISABLED");

  const GoogleCloudRetailV2betaSearchRequestPersonalizationSpecMode(this.wireValue);
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

