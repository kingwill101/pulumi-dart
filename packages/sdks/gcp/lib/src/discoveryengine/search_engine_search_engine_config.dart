// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SearchEngineSearchEngineConfig {
  /// The required subscription tier of this engine.
  /// They cannot be modified after engine creation. If the required subscription tier is search, user with higher license tier like assist can still access the standalone app associated with this engine.
  /// Possible values are: `SUBSCRIPTION_TIER_UNSPECIFIED`, `SUBSCRIPTION_TIER_SEARCH`, `SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT`, `SUBSCRIPTION_TIER_FRONTLINE_WORKER`, `SUBSCRIPTION_TIER_AGENTSPACE_STARTER`, `SUBSCRIPTION_TIER_AGENTSPACE_BUSINESS`, `SUBSCRIPTION_TIER_ENTERPRISE`, `SUBSCRIPTION_TIER_ENTERPRISE_EMERGING`, `SUBSCRIPTION_TIER_EDU`, `SUBSCRIPTION_TIER_EDU_PRO`, `SUBSCRIPTION_TIER_EDU_EMERGING`, `SUBSCRIPTION_TIER_EDU_PRO_EMERGING`, `SUBSCRIPTION_TIER_FRONTLINE_STARTER`.
  final pulumi.Input<String>? requiredSubscriptionTier;
  /// The add-on that this search engine enables.
  /// Each value may be one of: `SEARCH_ADD_ON_LLM`.
  final pulumi.Input<List<String>>? searchAddOns;
  /// The search feature tier of this engine. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  /// Default value is `SEARCH_TIER_STANDARD`.
  /// Possible values are: `SEARCH_TIER_STANDARD`, `SEARCH_TIER_ENTERPRISE`.
  final pulumi.Input<String>? searchTier;

  /// Creates a new [SearchEngineSearchEngineConfig].
  /// [requiredSubscriptionTier] The required subscription tier of this engine.
  /// [searchAddOns] The add-on that this search engine enables.
  /// [searchTier] The search feature tier of this engine. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  const SearchEngineSearchEngineConfig({
    this.requiredSubscriptionTier,
    this.searchAddOns,
    this.searchTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredSubscriptionTier': ?requiredSubscriptionTier,
      'searchAddOns': ?searchAddOns,
      'searchTier': ?searchTier,
    };
  }

  factory SearchEngineSearchEngineConfig.fromMap(Map<String, dynamic> map) {
    return SearchEngineSearchEngineConfig(
      requiredSubscriptionTier: (() { final guardedValue = map['requiredSubscriptionTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchAddOns: (() { final guardedValue = map['searchAddOns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      searchTier: (() { final guardedValue = map['searchTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
