import 'package:pulumi/pulumi.dart' as pulumi;

/// The search feature tier of this engine. Different tiers might have different pricing. To learn more, please check the pricing documentation. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
enum GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchTier implements pulumi.PulumiEnum<String> {
  searchTierUnspecified("SEARCH_TIER_UNSPECIFIED"),
  searchTierStandard("SEARCH_TIER_STANDARD"),
  searchTierEnterprise("SEARCH_TIER_ENTERPRISE");

  const GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchTier(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchTier fromValue(String value) {
    for (final item in GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchTier value: $value');
  }
}
