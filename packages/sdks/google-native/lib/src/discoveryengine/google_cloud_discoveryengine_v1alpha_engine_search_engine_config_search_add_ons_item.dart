enum GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem {
  searchAddOnUnspecified("SEARCH_ADD_ON_UNSPECIFIED"),
  searchAddOnLlm("SEARCH_ADD_ON_LLM");

  const GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem(this.wireValue);
  final String wireValue;

  static GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem fromValue(String value) {
    for (final item in GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem value: $value');
  }
}

