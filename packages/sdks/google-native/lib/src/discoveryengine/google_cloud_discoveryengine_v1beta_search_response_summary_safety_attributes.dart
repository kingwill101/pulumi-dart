// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Safety Attribute categories and their associated confidence scores.
class GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes {
  /// The display names of Safety Attribute categories associated with the generated content. Order matches the Scores.
  final pulumi.Input<List<String>>? categories;

  /// The confidence scores of the each category, higher value means higher confidence. Order matches the Categories.
  final pulumi.Input<List<double>>? scores;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes].
  /// [categories] The display names of Safety Attribute categories associated with the generated content. Order matches the Scores.
  /// [scores] The confidence scores of the each category, higher value means higher confidence. Order matches the Categories.
  GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes({
    this.categories,
    this.scores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'categories': ?categories, 'scores': ?scores};
  }

  factory GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes(
      categories: (() {
        final guardedValue = map['categories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      scores: (() {
        final guardedValue = map['scores'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<double>());
      })(),
    );
  }
}
