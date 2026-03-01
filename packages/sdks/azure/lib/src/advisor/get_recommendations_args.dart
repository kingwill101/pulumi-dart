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
    pulumi.Output<List<String>>? filterByCategories,
    pulumi.Output<List<String>>? filterByResourceGroups,
  }) :
      filterByCategories = pulumi.Input.asOptionalInput<List<String>>(filterByCategories),
      filterByResourceGroups = pulumi.Input.asOptionalInput<List<String>>(filterByResourceGroups);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterByCategories': ?filterByCategories,
      'filterByResourceGroups': ?filterByResourceGroups,
    };
  }

  factory GetRecommendationsArgs.fromMap(Map<String, dynamic> map) {
    return GetRecommendationsArgs(
      filterByCategories: map['filterByCategories'] == null ? null : pulumi.Output.create<List<String>>((map['filterByCategories'] as List).cast<String>()),
      filterByResourceGroups: map['filterByResourceGroups'] == null ? null : pulumi.Output.create<List<String>>((map['filterByResourceGroups'] as List).cast<String>()),
    );
  }
}

