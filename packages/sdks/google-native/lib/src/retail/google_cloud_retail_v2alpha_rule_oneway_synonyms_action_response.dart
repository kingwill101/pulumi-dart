// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Maps a set of terms to a set of synonyms. Set of synonyms will be treated as synonyms of each query term only. `query_terms` will not be treated as synonyms of each other. Example: "sneakers" will use a synonym of "shoes". "shoes" will not use a synonym of "sneakers".
class GoogleCloudRetailV2alphaRuleOnewaySynonymsActionResponse {
  /// Will be [deprecated = true] post migration;
  final pulumi.Input<List<String>> onewayTerms;
  /// Terms from the search query. Will treat synonyms as their synonyms. Not themselves synonyms of the synonyms. Can specify up to 100 terms.
  final pulumi.Input<List<String>> queryTerms;
  /// Defines a set of synonyms. Cannot contain duplicates. Can specify up to 100 synonyms.
  final pulumi.Input<List<String>> synonyms;

  /// Creates a new [GoogleCloudRetailV2alphaRuleOnewaySynonymsActionResponse].
  /// [onewayTerms] Will be [deprecated = true] post migration;
  /// [queryTerms] Terms from the search query. Will treat synonyms as their synonyms. Not themselves synonyms of the synonyms. Can specify up to 100 terms.
  /// [synonyms] Defines a set of synonyms. Cannot contain duplicates. Can specify up to 100 synonyms.
  GoogleCloudRetailV2alphaRuleOnewaySynonymsActionResponse({
    required this.onewayTerms,
    required this.queryTerms,
    required this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onewayTerms': onewayTerms,
      'queryTerms': queryTerms,
      'synonyms': synonyms,
    };
  }

  factory GoogleCloudRetailV2alphaRuleOnewaySynonymsActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRuleOnewaySynonymsActionResponse(
      onewayTerms: ((map['onewayTerms'] as List).cast<String>()).input(),
      queryTerms: ((map['queryTerms'] as List).cast<String>()).input(),
      synonyms: ((map['synonyms'] as List).cast<String>()).input(),
    );
  }
}

