// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_condition_response.dart';
import 'google_cloud_retail_v2alpha_rule_boost_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_do_not_associate_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_filter_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_force_return_facet_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_ignore_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_oneway_synonyms_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_redirect_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_remove_facet_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_replacement_action_response.dart';
import 'google_cloud_retail_v2alpha_rule_twoway_synonyms_action_response.dart';

/// A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2alphaRuleResponse {
  /// A boost action.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleBoostActionResponse> boostAction;
  /// The condition that triggers the rule. If the condition is empty, the rule will always apply.
  final pulumi.Input<GoogleCloudRetailV2alphaConditionResponse> condition;
  /// Prevents term from being associated with other terms.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleDoNotAssociateActionResponse> doNotAssociateAction;
  /// Filters results.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleFilterActionResponse> filterAction;
  /// Force returns an attribute as a facet in the request.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleForceReturnFacetActionResponse> forceReturnFacetAction;
  /// Ignores specific terms from query during search.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleIgnoreActionResponse> ignoreAction;
  /// Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleOnewaySynonymsActionResponse> onewaySynonymsAction;
  /// Redirects a shopper to a specific page.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleRedirectActionResponse> redirectAction;
  /// Remove an attribute as a facet in the request (if present).
  final pulumi.Input<GoogleCloudRetailV2alphaRuleRemoveFacetActionResponse> removeFacetAction;
  /// Replaces specific terms in the query.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleReplacementActionResponse> replacementAction;
  /// Treats a set of terms as synonyms of one another.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleTwowaySynonymsActionResponse> twowaySynonymsAction;

  /// Creates a new [GoogleCloudRetailV2alphaRuleResponse].
  /// [boostAction] A boost action.
  /// [condition] The condition that triggers the rule. If the condition is empty, the rule will always apply.
  /// [doNotAssociateAction] Prevents term from being associated with other terms.
  /// [filterAction] Filters results.
  /// [forceReturnFacetAction] Force returns an attribute as a facet in the request.
  /// [ignoreAction] Ignores specific terms from query during search.
  /// [onewaySynonymsAction] Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  /// [redirectAction] Redirects a shopper to a specific page.
  /// [removeFacetAction] Remove an attribute as a facet in the request (if present).
  /// [replacementAction] Replaces specific terms in the query.
  /// [twowaySynonymsAction] Treats a set of terms as synonyms of one another.
  const GoogleCloudRetailV2alphaRuleResponse({
    required this.boostAction,
    required this.condition,
    required this.doNotAssociateAction,
    required this.filterAction,
    required this.forceReturnFacetAction,
    required this.ignoreAction,
    required this.onewaySynonymsAction,
    required this.redirectAction,
    required this.removeFacetAction,
    required this.replacementAction,
    required this.twowaySynonymsAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaRuleBoostActionResponse, Map<String, dynamic>>(boostAction, (value) => value.toMap()),
      'condition': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaConditionResponse, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'doNotAssociateAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaRuleDoNotAssociateActionResponse, Map<String, dynamic>>(doNotAssociateAction, (value) => value.toMap()),
      'filterAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaRuleFilterActionResponse, Map<String, dynamic>>(filterAction, (value) => value.toMap()),
      'forceReturnFacetAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaRuleForceReturnFacetActionResponse, Map<String, dynamic>>(forceReturnFacetAction, (value) => value.toMap()),
      'ignoreAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaRuleIgnoreActionResponse, Map<String, dynamic>>(ignoreAction, (value) => value.toMap()),
      'onewaySynonymsAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaRuleOnewaySynonymsActionResponse, Map<String, dynamic>>(onewaySynonymsAction, (value) => value.toMap()),
      'redirectAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaRuleRedirectActionResponse, Map<String, dynamic>>(redirectAction, (value) => value.toMap()),
      'removeFacetAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaRuleRemoveFacetActionResponse, Map<String, dynamic>>(removeFacetAction, (value) => value.toMap()),
      'replacementAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaRuleReplacementActionResponse, Map<String, dynamic>>(replacementAction, (value) => value.toMap()),
      'twowaySynonymsAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaRuleTwowaySynonymsActionResponse, Map<String, dynamic>>(twowaySynonymsAction, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2alphaRuleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRuleResponse(
      boostAction: pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleBoostActionResponse.fromMap((map['boostAction']! as Map).cast<String, dynamic>())),
      condition: pulumi.Input.fromValue(GoogleCloudRetailV2alphaConditionResponse.fromMap((map['condition']! as Map).cast<String, dynamic>())),
      doNotAssociateAction: pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleDoNotAssociateActionResponse.fromMap((map['doNotAssociateAction']! as Map).cast<String, dynamic>())),
      filterAction: pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleFilterActionResponse.fromMap((map['filterAction']! as Map).cast<String, dynamic>())),
      forceReturnFacetAction: pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleForceReturnFacetActionResponse.fromMap((map['forceReturnFacetAction']! as Map).cast<String, dynamic>())),
      ignoreAction: pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleIgnoreActionResponse.fromMap((map['ignoreAction']! as Map).cast<String, dynamic>())),
      onewaySynonymsAction: pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleOnewaySynonymsActionResponse.fromMap((map['onewaySynonymsAction']! as Map).cast<String, dynamic>())),
      redirectAction: pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleRedirectActionResponse.fromMap((map['redirectAction']! as Map).cast<String, dynamic>())),
      removeFacetAction: pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleRemoveFacetActionResponse.fromMap((map['removeFacetAction']! as Map).cast<String, dynamic>())),
      replacementAction: pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleReplacementActionResponse.fromMap((map['replacementAction']! as Map).cast<String, dynamic>())),
      twowaySynonymsAction: pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleTwowaySynonymsActionResponse.fromMap((map['twowaySynonymsAction']! as Map).cast<String, dynamic>())),
    );
  }
}
