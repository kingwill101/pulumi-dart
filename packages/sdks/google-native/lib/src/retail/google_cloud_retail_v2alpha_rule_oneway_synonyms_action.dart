// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Maps a set of terms to a set of synonyms. Set of synonyms will be treated as synonyms of each query term only. `query_terms` will not be treated as synonyms of each other. Example: "sneakers" will use a synonym of "shoes". "shoes" will not use a synonym of "sneakers".
class GoogleCloudRetailV2alphaRuleOnewaySynonymsAction {
  /// Will be [deprecated = true] post migration;
  final pulumi.Input<List<String>>? onewayTerms;
  /// Terms from the search query. Will treat synonyms as their synonyms. Not themselves synonyms of the synonyms. Can specify up to 100 terms.
  final pulumi.Input<List<String>>? queryTerms;
  /// Defines a set of synonyms. Cannot contain duplicates. Can specify up to 100 synonyms.
  final pulumi.Input<List<String>>? synonyms;

  /// Creates a new [GoogleCloudRetailV2alphaRuleOnewaySynonymsAction].
  /// [onewayTerms] Will be [deprecated = true] post migration;
  /// [queryTerms] Terms from the search query. Will treat synonyms as their synonyms. Not themselves synonyms of the synonyms. Can specify up to 100 terms.
  /// [synonyms] Defines a set of synonyms. Cannot contain duplicates. Can specify up to 100 synonyms.
  const GoogleCloudRetailV2alphaRuleOnewaySynonymsAction({
    this.onewayTerms,
    this.queryTerms,
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onewayTerms': ?onewayTerms,
      'queryTerms': ?queryTerms,
      'synonyms': ?synonyms,
    };
  }

  factory GoogleCloudRetailV2alphaRuleOnewaySynonymsAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRuleOnewaySynonymsAction(
      onewayTerms: (() { final guardedValue = map['onewayTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      queryTerms: (() { final guardedValue = map['queryTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      synonyms: (() { final guardedValue = map['synonyms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

