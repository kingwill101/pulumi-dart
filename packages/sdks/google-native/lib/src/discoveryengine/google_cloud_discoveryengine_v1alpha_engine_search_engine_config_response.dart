// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configurations for a Search Engine.
class GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse {
  /// The add-on that this search engine enables.
  final pulumi.Input<List<String>> searchAddOns;
  /// The search feature tier of this engine. Different tiers might have different pricing. To learn more, please check the pricing documentation. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  final pulumi.Input<String> searchTier;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse].
  /// [searchAddOns] The add-on that this search engine enables.
  /// [searchTier] The search feature tier of this engine. Different tiers might have different pricing. To learn more, please check the pricing documentation. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  const GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse({
    required this.searchAddOns,
    required this.searchTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchAddOns': searchAddOns,
      'searchTier': searchTier,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfigResponse(
      searchAddOns: pulumi.Input.fromValue((map['searchAddOns'] as List).cast<String>()),
      searchTier: pulumi.Input.fromValue(map['searchTier'] as String),
    );
  }
}

