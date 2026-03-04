// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Replaces a term in the query. Multiple replacement candidates can be specified. All `query_terms` will be replaced with the replacement term. Example: Replace "gShoe" with "google shoe".
class GoogleCloudRetailV2alphaRuleReplacementAction {
  /// Terms from the search query. Will be replaced by replacement term. Can specify up to 100 terms.
  final pulumi.Input<List<String>>? queryTerms;

  /// Term that will be used for replacement.
  final pulumi.Input<String>? replacementTerm;

  /// Will be [deprecated = true] post migration;
  final pulumi.Input<String>? term;

  /// Creates a new [GoogleCloudRetailV2alphaRuleReplacementAction].
  /// [queryTerms] Terms from the search query. Will be replaced by replacement term. Can specify up to 100 terms.
  /// [replacementTerm] Term that will be used for replacement.
  /// [term] Will be [deprecated = true] post migration;
  GoogleCloudRetailV2alphaRuleReplacementAction({
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

  factory GoogleCloudRetailV2alphaRuleReplacementAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2alphaRuleReplacementAction(
      queryTerms: (() {
        final guardedValue = map['queryTerms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      replacementTerm: (() {
        final guardedValue = map['replacementTerm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      term: (() {
        final guardedValue = map['term'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
