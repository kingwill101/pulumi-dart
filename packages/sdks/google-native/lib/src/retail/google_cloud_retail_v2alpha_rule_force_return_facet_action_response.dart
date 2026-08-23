// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_rule_force_return_facet_action_facet_position_adjustment_response.dart';

/// Force returns an attribute/facet in the request around a certain position or above. * Rule Condition: Must specify non-empty Condition.query_terms (for search only) or Condition.page_categories (for browse only), but can't specify both. * Action Inputs: attribute name, position * Action Result: Will force return a facet key around a certain position or above if the condition is satisfied. Example: Suppose the query is "shoes", the Condition.query_terms is "shoes", the ForceReturnFacetAction.FacetPositionAdjustment.attribute_name is "size" and the ForceReturnFacetAction.FacetPositionAdjustment.position is 8. Two cases: a) The facet key "size" is not already in the top 8 slots, then the facet "size" will appear at a position close to 8. b) The facet key "size" in among the top 8 positions in the request, then it will stay at its current rank.
class GoogleCloudRetailV2alphaRuleForceReturnFacetActionResponse {
  /// Each instance corresponds to a force return attribute for the given condition. There can't be more 3 instances here.
  final pulumi.Input<List<GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustmentResponse>> facetPositionAdjustments;

  /// Creates a new [GoogleCloudRetailV2alphaRuleForceReturnFacetActionResponse].
  /// [facetPositionAdjustments] Each instance corresponds to a force return attribute for the given condition. There can't be more 3 instances here.
  const GoogleCloudRetailV2alphaRuleForceReturnFacetActionResponse({
    required this.facetPositionAdjustments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facetPositionAdjustments': pulumi.Input.mapInputValue<List<GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustmentResponse>, List<Map<String, dynamic>>>(facetPositionAdjustments, (value) => pulumi.Input.encodeList<GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustmentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudRetailV2alphaRuleForceReturnFacetActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRuleForceReturnFacetActionResponse(
      facetPositionAdjustments: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustmentResponse>(map['facetPositionAdjustments']!, (value) => GoogleCloudRetailV2alphaRuleForceReturnFacetActionFacetPositionAdjustmentResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
