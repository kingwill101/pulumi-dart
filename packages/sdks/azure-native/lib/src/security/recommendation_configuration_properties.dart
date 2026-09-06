// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of IoT Security recommendation.
class RecommendationConfigurationProperties {
  /// The type of IoT Security recommendation.
  final pulumi.Input<dynamic> recommendationType;
  /// Recommendation status. When the recommendation status is disabled recommendations are not generated.
  final pulumi.Input<dynamic> status;

  /// Creates a new [RecommendationConfigurationProperties].
  /// [recommendationType] The type of IoT Security recommendation.
  /// [status] Recommendation status. When the recommendation status is disabled recommendations are not generated.
  RecommendationConfigurationProperties({
    required this.recommendationType,
    pulumi.Input<dynamic>? status,
  }) : status = status ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recommendationType': recommendationType,
      'status': status,
    };
  }

  factory RecommendationConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return RecommendationConfigurationProperties(
      recommendationType: pulumi.Input.fromValue(map['recommendationType']),
      status: pulumi.Input.fromValue(map['status']),
    );
  }
}
