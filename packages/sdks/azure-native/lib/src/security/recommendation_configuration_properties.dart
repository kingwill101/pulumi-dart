// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of IoT Security recommendation.
class RecommendationConfigurationProperties {
  /// The type of IoT Security recommendation.
  final pulumi.Input<String> recommendationType;
  /// Recommendation status. When the recommendation status is disabled recommendations are not generated.
  final pulumi.Input<String> status;

  /// Creates a new [RecommendationConfigurationProperties].
  /// [recommendationType] The type of IoT Security recommendation.
  /// [status] Recommendation status. When the recommendation status is disabled recommendations are not generated.
  RecommendationConfigurationProperties({
    required this.recommendationType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recommendationType': recommendationType,
      'status': status,
    };
  }

  factory RecommendationConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return RecommendationConfigurationProperties(
      recommendationType: (map['recommendationType'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

