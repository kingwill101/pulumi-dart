// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2_condition_response.dart';
import 'google_cloud_retail_v2_rule_boost_action_response.dart';
import 'google_cloud_retail_v2_rule_do_not_associate_action_response.dart';
import 'google_cloud_retail_v2_rule_filter_action_response.dart';
import 'google_cloud_retail_v2_rule_force_return_facet_action_response.dart';
import 'google_cloud_retail_v2_rule_ignore_action_response.dart';
import 'google_cloud_retail_v2_rule_oneway_synonyms_action_response.dart';
import 'google_cloud_retail_v2_rule_redirect_action_response.dart';
import 'google_cloud_retail_v2_rule_remove_facet_action_response.dart';
import 'google_cloud_retail_v2_rule_replacement_action_response.dart';
import 'google_cloud_retail_v2_rule_twoway_synonyms_action_response.dart';

/// A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2RuleResponse {
  /// A boost action.
  final pulumi.Input<GoogleCloudRetailV2RuleBoostActionResponse> boostAction;
  /// The condition that triggers the rule. If the condition is empty, the rule will always apply.
  final pulumi.Input<GoogleCloudRetailV2ConditionResponse> condition;
  /// Prevents term from being associated with other terms.
  final pulumi.Input<GoogleCloudRetailV2RuleDoNotAssociateActionResponse> doNotAssociateAction;
  /// Filters results.
  final pulumi.Input<GoogleCloudRetailV2RuleFilterActionResponse> filterAction;
  /// Force returns an attribute as a facet in the request.
  final pulumi.Input<GoogleCloudRetailV2RuleForceReturnFacetActionResponse> forceReturnFacetAction;
  /// Ignores specific terms from query during search.
  final pulumi.Input<GoogleCloudRetailV2RuleIgnoreActionResponse> ignoreAction;
  /// Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  final pulumi.Input<GoogleCloudRetailV2RuleOnewaySynonymsActionResponse> onewaySynonymsAction;
  /// Redirects a shopper to a specific page.
  final pulumi.Input<GoogleCloudRetailV2RuleRedirectActionResponse> redirectAction;
  /// Remove an attribute as a facet in the request (if present).
  final pulumi.Input<GoogleCloudRetailV2RuleRemoveFacetActionResponse> removeFacetAction;
  /// Replaces specific terms in the query.
  final pulumi.Input<GoogleCloudRetailV2RuleReplacementActionResponse> replacementAction;
  /// Treats a set of terms as synonyms of one another.
  final pulumi.Input<GoogleCloudRetailV2RuleTwowaySynonymsActionResponse> twowaySynonymsAction;

  /// Creates a new [GoogleCloudRetailV2RuleResponse].
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
  const GoogleCloudRetailV2RuleResponse({
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
      'boostAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2RuleBoostActionResponse, Map<String, dynamic>>(boostAction, (value) => value.toMap()),
      'condition': pulumi.Input.mapInputValue<GoogleCloudRetailV2ConditionResponse, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'doNotAssociateAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2RuleDoNotAssociateActionResponse, Map<String, dynamic>>(doNotAssociateAction, (value) => value.toMap()),
      'filterAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2RuleFilterActionResponse, Map<String, dynamic>>(filterAction, (value) => value.toMap()),
      'forceReturnFacetAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2RuleForceReturnFacetActionResponse, Map<String, dynamic>>(forceReturnFacetAction, (value) => value.toMap()),
      'ignoreAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2RuleIgnoreActionResponse, Map<String, dynamic>>(ignoreAction, (value) => value.toMap()),
      'onewaySynonymsAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2RuleOnewaySynonymsActionResponse, Map<String, dynamic>>(onewaySynonymsAction, (value) => value.toMap()),
      'redirectAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2RuleRedirectActionResponse, Map<String, dynamic>>(redirectAction, (value) => value.toMap()),
      'removeFacetAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2RuleRemoveFacetActionResponse, Map<String, dynamic>>(removeFacetAction, (value) => value.toMap()),
      'replacementAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2RuleReplacementActionResponse, Map<String, dynamic>>(replacementAction, (value) => value.toMap()),
      'twowaySynonymsAction': pulumi.Input.mapInputValue<GoogleCloudRetailV2RuleTwowaySynonymsActionResponse, Map<String, dynamic>>(twowaySynonymsAction, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2RuleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2RuleResponse(
      boostAction: pulumi.Input.fromValue(GoogleCloudRetailV2RuleBoostActionResponse.fromMap((map['boostAction']! as Map).cast<String, dynamic>())),
      condition: pulumi.Input.fromValue(GoogleCloudRetailV2ConditionResponse.fromMap((map['condition']! as Map).cast<String, dynamic>())),
      doNotAssociateAction: pulumi.Input.fromValue(GoogleCloudRetailV2RuleDoNotAssociateActionResponse.fromMap((map['doNotAssociateAction']! as Map).cast<String, dynamic>())),
      filterAction: pulumi.Input.fromValue(GoogleCloudRetailV2RuleFilterActionResponse.fromMap((map['filterAction']! as Map).cast<String, dynamic>())),
      forceReturnFacetAction: pulumi.Input.fromValue(GoogleCloudRetailV2RuleForceReturnFacetActionResponse.fromMap((map['forceReturnFacetAction']! as Map).cast<String, dynamic>())),
      ignoreAction: pulumi.Input.fromValue(GoogleCloudRetailV2RuleIgnoreActionResponse.fromMap((map['ignoreAction']! as Map).cast<String, dynamic>())),
      onewaySynonymsAction: pulumi.Input.fromValue(GoogleCloudRetailV2RuleOnewaySynonymsActionResponse.fromMap((map['onewaySynonymsAction']! as Map).cast<String, dynamic>())),
      redirectAction: pulumi.Input.fromValue(GoogleCloudRetailV2RuleRedirectActionResponse.fromMap((map['redirectAction']! as Map).cast<String, dynamic>())),
      removeFacetAction: pulumi.Input.fromValue(GoogleCloudRetailV2RuleRemoveFacetActionResponse.fromMap((map['removeFacetAction']! as Map).cast<String, dynamic>())),
      replacementAction: pulumi.Input.fromValue(GoogleCloudRetailV2RuleReplacementActionResponse.fromMap((map['replacementAction']! as Map).cast<String, dynamic>())),
      twowaySynonymsAction: pulumi.Input.fromValue(GoogleCloudRetailV2RuleTwowaySynonymsActionResponse.fromMap((map['twowaySynonymsAction']! as Map).cast<String, dynamic>())),
    );
  }
}

