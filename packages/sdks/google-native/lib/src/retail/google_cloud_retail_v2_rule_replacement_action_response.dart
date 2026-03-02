// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Replaces a term in the query. Multiple replacement candidates can be specified. All `query_terms` will be replaced with the replacement term. Example: Replace "gShoe" with "google shoe".
class GoogleCloudRetailV2RuleReplacementActionResponse {
  /// Terms from the search query. Will be replaced by replacement term. Can specify up to 100 terms.
  final pulumi.Input<List<String>> queryTerms;
  /// Term that will be used for replacement.
  final pulumi.Input<String> replacementTerm;
  /// Will be [deprecated = true] post migration;
  final pulumi.Input<String> term;

  /// Creates a new [GoogleCloudRetailV2RuleReplacementActionResponse].
  /// [queryTerms] Terms from the search query. Will be replaced by replacement term. Can specify up to 100 terms.
  /// [replacementTerm] Term that will be used for replacement.
  /// [term] Will be [deprecated = true] post migration;
  GoogleCloudRetailV2RuleReplacementActionResponse({
    required this.queryTerms,
    required this.replacementTerm,
    required this.term,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryTerms': queryTerms,
      'replacementTerm': replacementTerm,
      'term': term,
    };
  }

  factory GoogleCloudRetailV2RuleReplacementActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleReplacementActionResponse(
      queryTerms: ((map['queryTerms'] as List).cast<String>()).input(),
      replacementTerm: (map['replacementTerm'] as String).input(),
      term: (map['term'] as String).input(),
    );
  }
}

