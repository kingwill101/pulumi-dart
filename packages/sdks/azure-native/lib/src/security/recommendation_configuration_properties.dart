// ignore_for_file: unused_element, unnecessary_cast


/// The type of IoT Security recommendation.
class RecommendationConfigurationProperties {
  /// The type of IoT Security recommendation.
  final String recommendationType;
  /// Recommendation status. When the recommendation status is disabled recommendations are not generated.
  final String status;

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
      recommendationType: map['recommendationType'] as String,
      status: map['status'] as String,
    );
  }
}

