// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Prevents a term in the query from being used in search. Example: Don't search for "shoddy".
class GoogleCloudRetailV2betaRuleIgnoreActionResponse {
  /// Terms to ignore in the search query.
  final pulumi.Input<List<String>> ignoreTerms;

  /// Creates a new [GoogleCloudRetailV2betaRuleIgnoreActionResponse].
  /// [ignoreTerms] Terms to ignore in the search query.
  GoogleCloudRetailV2betaRuleIgnoreActionResponse({required this.ignoreTerms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ignoreTerms': ignoreTerms};
  }

  factory GoogleCloudRetailV2betaRuleIgnoreActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaRuleIgnoreActionResponse(
      ignoreTerms: pulumi.Input.fromValue(
        (map['ignoreTerms'] as List).cast<String>(),
      ),
    );
  }
}
