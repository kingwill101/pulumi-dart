/// Defaults to Mode.AUTO.
enum GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  auto("AUTO"),
  disabled("DISABLED");

  const GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode(this.wireValue);
  final String wireValue;

  static GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode fromValue(String value) {
    for (final item in GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode value: $value');
  }
}

