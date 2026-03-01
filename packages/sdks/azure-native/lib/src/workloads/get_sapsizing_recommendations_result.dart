// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSAPSizingRecommendations.
class GetSAPSizingRecommendationsResult {
  /// The type of SAP deployment, single server or Three tier.
  final String deploymentType;

  /// Creates a new [GetSAPSizingRecommendationsResult].
  /// [deploymentType] The type of SAP deployment, single server or Three tier.
  GetSAPSizingRecommendationsResult({
    required this.deploymentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentType': deploymentType,
    };
  }

  factory GetSAPSizingRecommendationsResult.fromMap(Map<String, dynamic> map) {
    return GetSAPSizingRecommendationsResult(
      deploymentType: map['deploymentType'] as String,
    );
  }
}

