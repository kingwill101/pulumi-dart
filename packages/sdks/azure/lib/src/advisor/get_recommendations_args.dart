// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_advisor_get_recommendations_get_recommendations_args_doc}
/// Arguments for getRecommendations.
/// {@endtemplate}
/// {@macro pulumi_advisor_get_recommendations_get_recommendations_args_doc}
class GetRecommendationsArgs {
  /// Specifies a list of categories in which the Advisor Recommendations will be listed. Possible values are `HighAvailability`, `Security`, `Performance`, `Cost` and `OperationalExcellence`.
  final pulumi.Input<List<String>>? filterByCategories;
  /// Specifies a list of recommendation types about which the Advisor Recommendations will be listed.
  final pulumi.Input<List<String>>? filterByRecommendationTypeGuids;
  /// Specifies a list of resource groups about which the Advisor Recommendations will be listed.
  final pulumi.Input<List<String>>? filterByResourceGroups;
  /// Specifies a list of resource about which the Advisor Recommendations will be listed.
  final pulumi.Input<List<String>>? filterByResourceIds;

  /// Creates a new [GetRecommendationsArgs].
  /// [filterByCategories] Specifies a list of categories in which the Advisor Recommendations will be listed. Possible values are `HighAvailability`, `Security`, `Performance`, `Cost` and `OperationalExcellence`.
  /// [filterByRecommendationTypeGuids] Specifies a list of recommendation types about which the Advisor Recommendations will be listed.
  /// [filterByResourceGroups] Specifies a list of resource groups about which the Advisor Recommendations will be listed.
  /// [filterByResourceIds] Specifies a list of resource about which the Advisor Recommendations will be listed.
  const GetRecommendationsArgs({
    this.filterByCategories,
    this.filterByRecommendationTypeGuids,
    this.filterByResourceGroups,
    this.filterByResourceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterByCategories': ?filterByCategories,
      'filterByRecommendationTypeGuids': ?filterByRecommendationTypeGuids,
      'filterByResourceGroups': ?filterByResourceGroups,
      'filterByResourceIds': ?filterByResourceIds,
    };
  }

  factory GetRecommendationsArgs.fromMap(Map<String, dynamic> map) {
    return GetRecommendationsArgs(
      filterByCategories: (() { final guardedValue = map['filterByCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filterByRecommendationTypeGuids: (() { final guardedValue = map['filterByRecommendationTypeGuids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filterByResourceGroups: (() { final guardedValue = map['filterByResourceGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filterByResourceIds: (() { final guardedValue = map['filterByResourceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
