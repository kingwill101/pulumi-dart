// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The data for a matched phrase matcher. Represents information identifying a phrase matcher for a given match.
class GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse {
  /// The human-readable name of the phrase matcher.
  final pulumi.Input<String> displayName;
  /// The unique identifier (the resource name) of the phrase matcher.
  final pulumi.Input<String> phraseMatcher;

  /// Creates a new [GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse].
  /// [displayName] The human-readable name of the phrase matcher.
  /// [phraseMatcher] The unique identifier (the resource name) of the phrase matcher.
  const GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse({
    required this.displayName,
    required this.phraseMatcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'phraseMatcher': phraseMatcher,
    };
  }

  factory GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      phraseMatcher: pulumi.Input.fromValue(map['phraseMatcher'] as String),
    );
  }
}

