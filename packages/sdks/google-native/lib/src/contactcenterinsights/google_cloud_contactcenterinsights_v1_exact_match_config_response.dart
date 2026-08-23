// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Exact match configuration.
class GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse {
  /// Whether to consider case sensitivity when performing an exact match.
  final pulumi.Input<bool> caseSensitive;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse].
  /// [caseSensitive] Whether to consider case sensitivity when performing an exact match.
  const GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse({
    required this.caseSensitive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': caseSensitive,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ExactMatchConfigResponse(
      caseSensitive: pulumi.Input.fromValue(map['caseSensitive'] as bool),
    );
  }
}
