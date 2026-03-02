// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_advisor_get_recommendations_get_recommendations_args_doc}
/// Arguments for getRecommendations.
/// {@endtemplate}
/// {@macro pulumi_advisor_get_recommendations_get_recommendations_args_doc}
class GetRecommendationsArgs {
  /// Specifies a list of categories in which the Advisor Recommendations will be listed. Possible values are `HighAvailability`, `Security`, `Performance`, `Cost` and `OperationalExcellence`.
  final pulumi.Input<List<String>>? filterByCategories;
  /// Specifies a list of resource groups about which the Advisor Recommendations will be listed.
  final pulumi.Input<List<String>>? filterByResourceGroups;

  /// Creates a new [GetRecommendationsArgs].
  /// [filterByCategories] Specifies a list of categories in which the Advisor Recommendations will be listed. Possible values are `HighAvailability`, `Security`, `Performance`, `Cost` and `OperationalExcellence`.
  /// [filterByResourceGroups] Specifies a list of resource groups about which the Advisor Recommendations will be listed.
  GetRecommendationsArgs({
    this.filterByCategories,
    this.filterByResourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterByCategories': ?filterByCategories,
      'filterByResourceGroups': ?filterByResourceGroups,
    };
  }

  factory GetRecommendationsArgs.fromMap(Map<String, dynamic> map) {
    return GetRecommendationsArgs(
      filterByCategories: map['filterByCategories'] == null ? null : ((map['filterByCategories'] as List).cast<String>()).input(),
      filterByResourceGroups: map['filterByResourceGroups'] == null ? null : ((map['filterByResourceGroups'] as List).cast<String>()).input(),
    );
  }
}

