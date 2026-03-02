// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Replaces a term in the query. Multiple replacement candidates can be specified. All `query_terms` will be replaced with the replacement term. Example: Replace "gShoe" with "google shoe".
class GoogleCloudRetailV2RuleReplacementAction {
  /// Terms from the search query. Will be replaced by replacement term. Can specify up to 100 terms.
  final pulumi.Input<List<String>>? queryTerms;
  /// Term that will be used for replacement.
  final pulumi.Input<String>? replacementTerm;
  /// Will be [deprecated = true] post migration;
  final pulumi.Input<String>? term;

  /// Creates a new [GoogleCloudRetailV2RuleReplacementAction].
  /// [queryTerms] Terms from the search query. Will be replaced by replacement term. Can specify up to 100 terms.
  /// [replacementTerm] Term that will be used for replacement.
  /// [term] Will be [deprecated = true] post migration;
  GoogleCloudRetailV2RuleReplacementAction({
    this.queryTerms,
    this.replacementTerm,
    this.term,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryTerms': ?queryTerms,
      'replacementTerm': ?replacementTerm,
      'term': ?term,
    };
  }

  factory GoogleCloudRetailV2RuleReplacementAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleReplacementAction(
      queryTerms: map['queryTerms'] == null ? null : ((map['queryTerms']! as List).cast<String>()).input(),
      replacementTerm: map['replacementTerm'] == null ? null : (map['replacementTerm']! as String).input(),
      term: map['term'] == null ? null : (map['term']! as String).input(),
    );
  }
}

