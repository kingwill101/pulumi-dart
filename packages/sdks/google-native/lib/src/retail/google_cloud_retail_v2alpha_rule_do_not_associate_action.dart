// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Prevents `query_term` from being associated with specified terms during search. Example: Don't associate "gShoe" and "cheap".
class GoogleCloudRetailV2alphaRuleDoNotAssociateAction {
  /// Cannot contain duplicates or the query term. Can specify up to 100 terms.
  final pulumi.Input<List<String>>? doNotAssociateTerms;
  /// Terms from the search query. Will not consider do_not_associate_terms for search if in search query. Can specify up to 100 terms.
  final pulumi.Input<List<String>>? queryTerms;
  /// Will be [deprecated = true] post migration;
  final pulumi.Input<List<String>>? terms;

  /// Creates a new [GoogleCloudRetailV2alphaRuleDoNotAssociateAction].
  /// [doNotAssociateTerms] Cannot contain duplicates or the query term. Can specify up to 100 terms.
  /// [queryTerms] Terms from the search query. Will not consider do_not_associate_terms for search if in search query. Can specify up to 100 terms.
  /// [terms] Will be [deprecated = true] post migration;
  const GoogleCloudRetailV2alphaRuleDoNotAssociateAction({
    this.doNotAssociateTerms,
    this.queryTerms,
    this.terms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doNotAssociateTerms': ?doNotAssociateTerms,
      'queryTerms': ?queryTerms,
      'terms': ?terms,
    };
  }

  factory GoogleCloudRetailV2alphaRuleDoNotAssociateAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRuleDoNotAssociateAction(
      doNotAssociateTerms: (() { final guardedValue = map['doNotAssociateTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      queryTerms: (() { final guardedValue = map['queryTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      terms: (() { final guardedValue = map['terms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
