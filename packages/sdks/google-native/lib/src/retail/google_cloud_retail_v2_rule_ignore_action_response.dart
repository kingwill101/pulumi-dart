// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Prevents a term in the query from being used in search. Example: Don't search for "shoddy".
class GoogleCloudRetailV2RuleIgnoreActionResponse {
  /// Terms to ignore in the search query.
  final pulumi.Input<List<String>> ignoreTerms;

  /// Creates a new [GoogleCloudRetailV2RuleIgnoreActionResponse].
  /// [ignoreTerms] Terms to ignore in the search query.
  const GoogleCloudRetailV2RuleIgnoreActionResponse({
    required this.ignoreTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreTerms': ignoreTerms,
    };
  }

  factory GoogleCloudRetailV2RuleIgnoreActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleIgnoreActionResponse(
      ignoreTerms: pulumi.Input.fromValue((map['ignoreTerms'] as List).cast<String>()),
    );
  }
}

