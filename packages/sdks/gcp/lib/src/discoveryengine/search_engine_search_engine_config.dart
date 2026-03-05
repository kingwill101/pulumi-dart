// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SearchEngineSearchEngineConfig {
  /// The add-on that this search engine enables.
  /// Each value may be one of: `SEARCH_ADD_ON_LLM`.
  final pulumi.Input<List<String>>? searchAddOns;
  /// The search feature tier of this engine. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  /// Default value is `SEARCH_TIER_STANDARD`.
  /// Possible values are: `SEARCH_TIER_STANDARD`, `SEARCH_TIER_ENTERPRISE`.
  final pulumi.Input<String>? searchTier;

  /// Creates a new [SearchEngineSearchEngineConfig].
  /// [searchAddOns] The add-on that this search engine enables.
  /// [searchTier] The search feature tier of this engine. Defaults to SearchTier.SEARCH_TIER_STANDARD if not specified.
  SearchEngineSearchEngineConfig({
    this.searchAddOns,
    this.searchTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchAddOns': ?searchAddOns,
      'searchTier': ?searchTier,
    };
  }

  factory SearchEngineSearchEngineConfig.fromMap(Map<String, dynamic> map) {
    return SearchEngineSearchEngineConfig(
      searchAddOns: (() { final guardedValue = map['searchAddOns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      searchTier: (() { final guardedValue = map['searchTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

