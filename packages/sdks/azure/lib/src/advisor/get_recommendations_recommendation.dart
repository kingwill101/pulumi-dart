// ignore_for_file: unused_element, unnecessary_cast


class GetRecommendationsRecommendation {
  /// The category of the recommendation.
  final String category;
  /// The description of the issue or the opportunity identified by the recommendation.
  final String description;
  /// The business impact of the recommendation.
  final String impact;
  /// The name of the Advisor Recommendation.
  final String recommendationName;
  /// The recommendation type id of the Advisor Recommendation.
  final String recommendationTypeId;
  /// The name of the identified resource of the Advisor Recommendation.
  final String resourceName;
  /// The type of the identified resource of the Advisor Recommendation.
  final String resourceType;
  /// A list of Advisor Suppression names of the Advisor Recommendation.
  final List<String> suppressionNames;
  /// The most recent time that Advisor checked the validity of the recommendation..
  final String updatedTime;

  /// Creates a new [GetRecommendationsRecommendation].
  /// [category] The category of the recommendation.
  /// [description] The description of the issue or the opportunity identified by the recommendation.
  /// [impact] The business impact of the recommendation.
  /// [recommendationName] The name of the Advisor Recommendation.
  /// [recommendationTypeId] The recommendation type id of the Advisor Recommendation.
  /// [resourceName] The name of the identified resource of the Advisor Recommendation.
  /// [resourceType] The type of the identified resource of the Advisor Recommendation.
  /// [suppressionNames] A list of Advisor Suppression names of the Advisor Recommendation.
  /// [updatedTime] The most recent time that Advisor checked the validity of the recommendation..
  GetRecommendationsRecommendation({
    required this.category,
    required this.description,
    required this.impact,
    required this.recommendationName,
    required this.recommendationTypeId,
    required this.resourceName,
    required this.resourceType,
    required this.suppressionNames,
    required this.updatedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'description': description,
      'impact': impact,
      'recommendationName': recommendationName,
      'recommendationTypeId': recommendationTypeId,
      'resourceName': resourceName,
      'resourceType': resourceType,
      'suppressionNames': suppressionNames,
      'updatedTime': updatedTime,
    };
  }

  factory GetRecommendationsRecommendation.fromMap(Map<String, dynamic> map) {
    return GetRecommendationsRecommendation(
      category: map['category'] as String,
      description: map['description'] as String,
      impact: map['impact'] as String,
      recommendationName: map['recommendationName'] as String,
      recommendationTypeId: map['recommendationTypeId'] as String,
      resourceName: map['resourceName'] as String,
      resourceType: map['resourceType'] as String,
      suppressionNames: (map['suppressionNames'] as List).cast<String>(),
      updatedTime: map['updatedTime'] as String,
    );
  }
}

