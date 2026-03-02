// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config_search_add_ons_item.dart';
import 'google_cloud_discoveryengine_v1alpha_engine_search_engine_config_search_tier.dart';

/// Configurations for a Search Engine.
class GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig {
  /// The add-on that this search engine enables.
  final pulumi.Input<List<GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem>>? searchAddOns;
  /// The search feature tier of this engine. Different tiers might have different pricing. To learn more, please check the pricing documentation. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchTier>? searchTier;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig].
  /// [searchAddOns] The add-on that this search engine enables.
  /// [searchTier] The search feature tier of this engine. Different tiers might have different pricing. To learn more, please check the pricing documentation. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig({
    this.searchAddOns,
    this.searchTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchAddOns': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem>, List<String>>(searchAddOns, (value) => pulumi.Input.encodeList<GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem, String>(value, (value) => value.value)),
      'searchTier': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchTier, String>(searchTier, (value) => value.value),
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig(
      searchAddOns: map['searchAddOns'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem>(map['searchAddOns'], (value) => GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchAddOnsItem.fromValue(value as String))).input(),
      searchTier: map['searchTier'] == null ? null : (GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigSearchTier.fromValue(map['searchTier'] as String)).input(),
    );
  }
}

