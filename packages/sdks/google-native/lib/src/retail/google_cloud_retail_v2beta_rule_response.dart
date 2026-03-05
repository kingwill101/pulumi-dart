// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_condition_response.dart';
import 'google_cloud_retail_v2beta_rule_boost_action_response.dart';
import 'google_cloud_retail_v2beta_rule_do_not_associate_action_response.dart';
import 'google_cloud_retail_v2beta_rule_filter_action_response.dart';
import 'google_cloud_retail_v2beta_rule_force_return_facet_action_response.dart';
import 'google_cloud_retail_v2beta_rule_ignore_action_response.dart';
import 'google_cloud_retail_v2beta_rule_oneway_synonyms_action_response.dart';
import 'google_cloud_retail_v2beta_rule_redirect_action_response.dart';
import 'google_cloud_retail_v2beta_rule_remove_facet_action_response.dart';
import 'google_cloud_retail_v2beta_rule_replacement_action_response.dart';
import 'google_cloud_retail_v2beta_rule_twoway_synonyms_action_response.dart';

/// A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2betaRuleResponse {
  /// A boost action.
  final pulumi.Input<GoogleCloudRetailV2betaRuleBoostActionResponse> boostAction;
  /// The condition that triggers the rule. If the condition is empty, the rule will always apply.
  final pulumi.Input<GoogleCloudRetailV2betaConditionResponse> condition;
  /// Prevents term from being associated with other terms.
  final pulumi.Input<GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse> doNotAssociateAction;
  /// Filters results.
  final pulumi.Input<GoogleCloudRetailV2betaRuleFilterActionResponse> filterAction;
  /// Force returns an attribute as a facet in the request.
  final pulumi.Input<GoogleCloudRetailV2betaRuleForceReturnFacetActionResponse> forceReturnFacetAction;
  /// Ignores specific terms from query during search.
  final pulumi.Input<GoogleCloudRetailV2betaRuleIgnoreActionResponse> ignoreAction;
  /// Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  final pulumi.Input<GoogleCloudRetailV2betaRuleOnewaySynonymsActionResponse> onewaySynonymsAction;
  /// Redirects a shopper to a specific page.
  final pulumi.Input<GoogleCloudRetailV2betaRuleRedirectActionResponse> redirectAction;
  /// Remove an attribute as a facet in the request (if present).
  final pulumi.Input<GoogleCloudRetailV2betaRuleRemoveFacetActionResponse> removeFacetAction;
  /// Replaces specific terms in the query.
  final pulumi.Input<GoogleCloudRetailV2betaRuleReplacementActionResponse> replacementAction;
  /// Treats a set of terms as synonyms of one another.
  final pulumi.Input<GoogleCloudRetailV2betaRuleTwowaySynonymsActionResponse> twowaySynonymsAction;

  /// Creates a new [GoogleCloudRetailV2betaRuleResponse].
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
  GoogleCloudRetailV2betaRuleResponse({
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
      'boostAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaRuleBoostActionResponse, Map<String, dynamic>>(boostAction, (value) => value.toMap()),
      'condition': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaConditionResponse, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'doNotAssociateAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse, Map<String, dynamic>>(doNotAssociateAction, (value) => value.toMap()),
      'filterAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaRuleFilterActionResponse, Map<String, dynamic>>(filterAction, (value) => value.toMap()),
      'forceReturnFacetAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaRuleForceReturnFacetActionResponse, Map<String, dynamic>>(forceReturnFacetAction, (value) => value.toMap()),
      'ignoreAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaRuleIgnoreActionResponse, Map<String, dynamic>>(ignoreAction, (value) => value.toMap()),
      'onewaySynonymsAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaRuleOnewaySynonymsActionResponse, Map<String, dynamic>>(onewaySynonymsAction, (value) => value.toMap()),
      'redirectAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaRuleRedirectActionResponse, Map<String, dynamic>>(redirectAction, (value) => value.toMap()),
      'removeFacetAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaRuleRemoveFacetActionResponse, Map<String, dynamic>>(removeFacetAction, (value) => value.toMap()),
      'replacementAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaRuleReplacementActionResponse, Map<String, dynamic>>(replacementAction, (value) => value.toMap()),
      'twowaySynonymsAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaRuleTwowaySynonymsActionResponse, Map<String, dynamic>>(twowaySynonymsAction, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2betaRuleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRuleResponse(
      boostAction: pulumi.Input.fromValue(GoogleCloudRetailV2betaRuleBoostActionResponse.fromMap((map['boostAction']! as Map).cast<String, dynamic>())),
      condition: pulumi.Input.fromValue(GoogleCloudRetailV2betaConditionResponse.fromMap((map['condition']! as Map).cast<String, dynamic>())),
      doNotAssociateAction: pulumi.Input.fromValue(GoogleCloudRetailV2betaRuleDoNotAssociateActionResponse.fromMap((map['doNotAssociateAction']! as Map).cast<String, dynamic>())),
      filterAction: pulumi.Input.fromValue(GoogleCloudRetailV2betaRuleFilterActionResponse.fromMap((map['filterAction']! as Map).cast<String, dynamic>())),
      forceReturnFacetAction: pulumi.Input.fromValue(GoogleCloudRetailV2betaRuleForceReturnFacetActionResponse.fromMap((map['forceReturnFacetAction']! as Map).cast<String, dynamic>())),
      ignoreAction: pulumi.Input.fromValue(GoogleCloudRetailV2betaRuleIgnoreActionResponse.fromMap((map['ignoreAction']! as Map).cast<String, dynamic>())),
      onewaySynonymsAction: pulumi.Input.fromValue(GoogleCloudRetailV2betaRuleOnewaySynonymsActionResponse.fromMap((map['onewaySynonymsAction']! as Map).cast<String, dynamic>())),
      redirectAction: pulumi.Input.fromValue(GoogleCloudRetailV2betaRuleRedirectActionResponse.fromMap((map['redirectAction']! as Map).cast<String, dynamic>())),
      removeFacetAction: pulumi.Input.fromValue(GoogleCloudRetailV2betaRuleRemoveFacetActionResponse.fromMap((map['removeFacetAction']! as Map).cast<String, dynamic>())),
      replacementAction: pulumi.Input.fromValue(GoogleCloudRetailV2betaRuleReplacementActionResponse.fromMap((map['replacementAction']! as Map).cast<String, dynamic>())),
      twowaySynonymsAction: pulumi.Input.fromValue(GoogleCloudRetailV2betaRuleTwowaySynonymsActionResponse.fromMap((map['twowaySynonymsAction']! as Map).cast<String, dynamic>())),
    );
  }
}

