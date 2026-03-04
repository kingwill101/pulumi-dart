// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Prevents a term in the query from being used in search. Example: Don't search for "shoddy".
class GoogleCloudRetailV2alphaRuleIgnoreActionResponse {
  /// Terms to ignore in the search query.
  final pulumi.Input<List<String>> ignoreTerms;

  /// Creates a new [GoogleCloudRetailV2alphaRuleIgnoreActionResponse].
  /// [ignoreTerms] Terms to ignore in the search query.
  GoogleCloudRetailV2alphaRuleIgnoreActionResponse({required this.ignoreTerms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ignoreTerms': ignoreTerms};
  }

  factory GoogleCloudRetailV2alphaRuleIgnoreActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2alphaRuleIgnoreActionResponse(
      ignoreTerms: pulumi.Input.fromValue(
        (map['ignoreTerms'] as List).cast<String>(),
      ),
    );
  }
}
