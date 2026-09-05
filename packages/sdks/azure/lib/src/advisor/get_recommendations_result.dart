// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_recommendations_recommendation.dart';

/// Result data returned by getRecommendations.
class GetRecommendationsResult {
  final List<String>? filterByCategories;
  final List<String>? filterByRecommendationTypeGuids;
  final List<String>? filterByResourceGroups;
  final List<String>? filterByResourceIds;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// One or more `recommendations` blocks as defined below.
  final List<GetRecommendationsRecommendation>? recommendations;

  /// Creates a new [GetRecommendationsResult].
  /// [filterByCategories] Optional.
  /// [filterByRecommendationTypeGuids] Optional.
  /// [filterByResourceGroups] Optional.
  /// [filterByResourceIds] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [recommendations] One or more `recommendations` blocks as defined below.
  const GetRecommendationsResult({
    this.filterByCategories,
    this.filterByRecommendationTypeGuids,
    this.filterByResourceGroups,
    this.filterByResourceIds,
    this.id,
    this.recommendations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterByCategories': ?filterByCategories,
      'filterByRecommendationTypeGuids': ?filterByRecommendationTypeGuids,
      'filterByResourceGroups': ?filterByResourceGroups,
      'filterByResourceIds': ?filterByResourceIds,
      'id': ?id,
      'recommendations': ?(() { final guardedValue = recommendations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRecommendationsRecommendation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRecommendationsResult.fromMap(Map<String, dynamic> map) {
    return GetRecommendationsResult(
      filterByCategories: (() { final guardedValue = map['filterByCategories']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filterByRecommendationTypeGuids: (() { final guardedValue = map['filterByRecommendationTypeGuids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filterByResourceGroups: (() { final guardedValue = map['filterByResourceGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filterByResourceIds: (() { final guardedValue = map['filterByResourceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recommendations: (() { final guardedValue = map['recommendations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRecommendationsRecommendation>(guardedValue, (value) => GetRecommendationsRecommendation.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
