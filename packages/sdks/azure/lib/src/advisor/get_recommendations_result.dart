// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_recommendations_recommendation.dart';

/// Result data returned by getRecommendations.
class GetRecommendationsResult {
  final List<String>? filterByCategories;
  final List<String>? filterByResourceGroups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// One or more `recommendations` blocks as defined below.
  final List<GetRecommendationsRecommendation> recommendations;

  /// Creates a new [GetRecommendationsResult].
  /// [filterByCategories] Optional.
  /// [filterByResourceGroups] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [recommendations] One or more `recommendations` blocks as defined below.
  GetRecommendationsResult({
    this.filterByCategories,
    this.filterByResourceGroups,
    required this.id,
    required this.recommendations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterByCategories': ?filterByCategories,
      'filterByResourceGroups': ?filterByResourceGroups,
      'id': id,
      'recommendations': pulumi.Input.encodeList<GetRecommendationsRecommendation, Map<String, dynamic>>(recommendations, (value) => value.toMap()),
    };
  }

  factory GetRecommendationsResult.fromMap(Map<String, dynamic> map) {
    return GetRecommendationsResult(
      filterByCategories: map['filterByCategories'] == null ? null : (map['filterByCategories'] as List).cast<String>(),
      filterByResourceGroups: map['filterByResourceGroups'] == null ? null : (map['filterByResourceGroups'] as List).cast<String>(),
      id: map['id'] as String,
      recommendations: pulumi.Input.decodeList<GetRecommendationsRecommendation>(map['recommendations'], (value) => GetRecommendationsRecommendation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

