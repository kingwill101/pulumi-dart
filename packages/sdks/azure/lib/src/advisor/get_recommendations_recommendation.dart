// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRecommendationsRecommendation {
  /// The category of the recommendation.
  final pulumi.Input<String> category;
  /// The description of the issue or the opportunity identified by the recommendation.
  final pulumi.Input<String> description;
  /// The name of the Advisor Recommendation.
  final pulumi.Input<String> id;
  /// The business impact of the recommendation.
  final pulumi.Input<String> impact;
  /// The name of the Advisor Recommendation.
  final pulumi.Input<String> recommendationName;
  /// The recommendation type id of the Advisor Recommendation.
  final pulumi.Input<String> recommendationTypeId;
  /// The name of the identified resource of the Advisor Recommendation.
  final pulumi.Input<String> resourceName;
  /// The type of the identified resource of the Advisor Recommendation.
  final pulumi.Input<String> resourceType;
  /// A list of Advisor Suppression names of the Advisor Recommendation.
  final pulumi.Input<List<String>> suppressionNames;
  /// The most recent time that Advisor checked the validity of the recommendation..
  final pulumi.Input<String> updatedTime;

  /// Creates a new [GetRecommendationsRecommendation].
  /// [category] The category of the recommendation.
  /// [description] The description of the issue or the opportunity identified by the recommendation.
  /// [id] The name of the Advisor Recommendation.
  /// [impact] The business impact of the recommendation.
  /// [recommendationName] The name of the Advisor Recommendation.
  /// [recommendationTypeId] The recommendation type id of the Advisor Recommendation.
  /// [resourceName] The name of the identified resource of the Advisor Recommendation.
  /// [resourceType] The type of the identified resource of the Advisor Recommendation.
  /// [suppressionNames] A list of Advisor Suppression names of the Advisor Recommendation.
  /// [updatedTime] The most recent time that Advisor checked the validity of the recommendation..
  const GetRecommendationsRecommendation({
    required this.category,
    required this.description,
    required this.id,
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
      'id': id,
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
      category: pulumi.Input.fromValue(map['category'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      impact: pulumi.Input.fromValue(map['impact'] as String),
      recommendationName: pulumi.Input.fromValue(map['recommendationName'] as String),
      recommendationTypeId: pulumi.Input.fromValue(map['recommendationTypeId'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      suppressionNames: pulumi.Input.fromValue((map['suppressionNames'] as List).cast<String>()),
      updatedTime: pulumi.Input.fromValue(map['updatedTime'] as String),
    );
  }
}
