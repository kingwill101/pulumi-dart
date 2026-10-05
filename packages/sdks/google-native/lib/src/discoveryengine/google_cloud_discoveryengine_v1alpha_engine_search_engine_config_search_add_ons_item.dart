import 'package:pulumi/pulumi.dart' as pulumi;

enum GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem implements pulumi.PulumiEnum<String> {
  searchAddOnUnspecified("SEARCH_ADD_ON_UNSPECIFIED"),
  searchAddOnLlm("SEARCH_ADD_ON_LLM");

  const GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem(this.wireValue);
  @override
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
