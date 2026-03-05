// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Prevents a term in the query from being used in search. Example: Don't search for "shoddy".
class GoogleCloudRetailV2betaRuleIgnoreAction {
  /// Terms to ignore in the search query.
  final pulumi.Input<List<String>>? ignoreTerms;

  /// Creates a new [GoogleCloudRetailV2betaRuleIgnoreAction].
  /// [ignoreTerms] Terms to ignore in the search query.
  GoogleCloudRetailV2betaRuleIgnoreAction({
    this.ignoreTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreTerms': ?ignoreTerms,
    };
  }

  factory GoogleCloudRetailV2betaRuleIgnoreAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRuleIgnoreAction(
      ignoreTerms: (() { final guardedValue = map['ignoreTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

