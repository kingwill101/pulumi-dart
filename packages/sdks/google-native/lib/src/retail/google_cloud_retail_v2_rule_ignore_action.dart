// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Prevents a term in the query from being used in search. Example: Don't search for "shoddy".
class GoogleCloudRetailV2RuleIgnoreAction {
  /// Terms to ignore in the search query.
  final pulumi.Input<List<String>>? ignoreTerms;

  /// Creates a new [GoogleCloudRetailV2RuleIgnoreAction].
  /// [ignoreTerms] Terms to ignore in the search query.
  GoogleCloudRetailV2RuleIgnoreAction({
    this.ignoreTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreTerms': ?ignoreTerms,
    };
  }

  factory GoogleCloudRetailV2RuleIgnoreAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleIgnoreAction(
      ignoreTerms: map['ignoreTerms'] == null ? null : ((map['ignoreTerms'] as List).cast<String>()).input(),
    );
  }
}

