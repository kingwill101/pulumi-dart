// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of IoT Security recommendation.
class RecommendationConfigurationPropertiesResponse {
  final pulumi.Input<String> name;
  /// The type of IoT Security recommendation.
  final pulumi.Input<String> recommendationType;
  /// Recommendation status. When the recommendation status is disabled recommendations are not generated.
  final pulumi.Input<String> status;

  /// Creates a new [RecommendationConfigurationPropertiesResponse].
  /// [name] Required.
  /// [recommendationType] The type of IoT Security recommendation.
  /// [status] Recommendation status. When the recommendation status is disabled recommendations are not generated.
  const RecommendationConfigurationPropertiesResponse({
    required this.name,
    required this.recommendationType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recommendationType': recommendationType,
      'status': status,
    };
  }

  factory RecommendationConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RecommendationConfigurationPropertiesResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      recommendationType: pulumi.Input.fromValue(map['recommendationType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
