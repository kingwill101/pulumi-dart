// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_condition.dart';
import 'google_cloud_retail_v2beta_rule_boost_action.dart';
import 'google_cloud_retail_v2beta_rule_do_not_associate_action.dart';
import 'google_cloud_retail_v2beta_rule_filter_action.dart';
import 'google_cloud_retail_v2beta_rule_force_return_facet_action.dart';
import 'google_cloud_retail_v2beta_rule_ignore_action.dart';
import 'google_cloud_retail_v2beta_rule_oneway_synonyms_action.dart';
import 'google_cloud_retail_v2beta_rule_redirect_action.dart';
import 'google_cloud_retail_v2beta_rule_remove_facet_action.dart';
import 'google_cloud_retail_v2beta_rule_replacement_action.dart';
import 'google_cloud_retail_v2beta_rule_twoway_synonyms_action.dart';

/// A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2betaRule {
  /// A boost action.
  final pulumi.Input<GoogleCloudRetailV2betaRuleBoostAction>? boostAction;
  /// The condition that triggers the rule. If the condition is empty, the rule will always apply.
  final pulumi.Input<GoogleCloudRetailV2betaCondition> condition;
  /// Prevents term from being associated with other terms.
  final pulumi.Input<GoogleCloudRetailV2betaRuleDoNotAssociateAction>? doNotAssociateAction;
  /// Filters results.
  final pulumi.Input<GoogleCloudRetailV2betaRuleFilterAction>? filterAction;
  /// Force returns an attribute as a facet in the request.
  final pulumi.Input<GoogleCloudRetailV2betaRuleForceReturnFacetAction>? forceReturnFacetAction;
  /// Ignores specific terms from query during search.
  final pulumi.Input<GoogleCloudRetailV2betaRuleIgnoreAction>? ignoreAction;
  /// Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  final pulumi.Input<GoogleCloudRetailV2betaRuleOnewaySynonymsAction>? onewaySynonymsAction;
  /// Redirects a shopper to a specific page.
  final pulumi.Input<GoogleCloudRetailV2betaRuleRedirectAction>? redirectAction;
  /// Remove an attribute as a facet in the request (if present).
  final pulumi.Input<GoogleCloudRetailV2betaRuleRemoveFacetAction>? removeFacetAction;
  /// Replaces specific terms in the query.
  final pulumi.Input<GoogleCloudRetailV2betaRuleReplacementAction>? replacementAction;
  /// Treats a set of terms as synonyms of one another.
  final pulumi.Input<GoogleCloudRetailV2betaRuleTwowaySynonymsAction>? twowaySynonymsAction;

  /// Creates a new [GoogleCloudRetailV2betaRule].
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
  GoogleCloudRetailV2betaRule({
    this.boostAction,
    required this.condition,
    this.doNotAssociateAction,
    this.filterAction,
    this.forceReturnFacetAction,
    this.ignoreAction,
    this.onewaySynonymsAction,
    this.redirectAction,
    this.removeFacetAction,
    this.replacementAction,
    this.twowaySynonymsAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boostAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRuleBoostAction, Map<String, dynamic>>(boostAction, (value) => value.toMap()),
      'condition': pulumi.Input.mapInputValue<GoogleCloudRetailV2betaCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'doNotAssociateAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRuleDoNotAssociateAction, Map<String, dynamic>>(doNotAssociateAction, (value) => value.toMap()),
      'filterAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRuleFilterAction, Map<String, dynamic>>(filterAction, (value) => value.toMap()),
      'forceReturnFacetAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRuleForceReturnFacetAction, Map<String, dynamic>>(forceReturnFacetAction, (value) => value.toMap()),
      'ignoreAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRuleIgnoreAction, Map<String, dynamic>>(ignoreAction, (value) => value.toMap()),
      'onewaySynonymsAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRuleOnewaySynonymsAction, Map<String, dynamic>>(onewaySynonymsAction, (value) => value.toMap()),
      'redirectAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRuleRedirectAction, Map<String, dynamic>>(redirectAction, (value) => value.toMap()),
      'removeFacetAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRuleRemoveFacetAction, Map<String, dynamic>>(removeFacetAction, (value) => value.toMap()),
      'replacementAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRuleReplacementAction, Map<String, dynamic>>(replacementAction, (value) => value.toMap()),
      'twowaySynonymsAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2betaRuleTwowaySynonymsAction, Map<String, dynamic>>(twowaySynonymsAction, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2betaRule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRule(
      boostAction: map['boostAction'] == null ? null : (GoogleCloudRetailV2betaRuleBoostAction.fromMap((map['boostAction']! as Map).cast<String, dynamic>())).input(),
      condition: (GoogleCloudRetailV2betaCondition.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      doNotAssociateAction: map['doNotAssociateAction'] == null ? null : (GoogleCloudRetailV2betaRuleDoNotAssociateAction.fromMap((map['doNotAssociateAction']! as Map).cast<String, dynamic>())).input(),
      filterAction: map['filterAction'] == null ? null : (GoogleCloudRetailV2betaRuleFilterAction.fromMap((map['filterAction']! as Map).cast<String, dynamic>())).input(),
      forceReturnFacetAction: map['forceReturnFacetAction'] == null ? null : (GoogleCloudRetailV2betaRuleForceReturnFacetAction.fromMap((map['forceReturnFacetAction']! as Map).cast<String, dynamic>())).input(),
      ignoreAction: map['ignoreAction'] == null ? null : (GoogleCloudRetailV2betaRuleIgnoreAction.fromMap((map['ignoreAction']! as Map).cast<String, dynamic>())).input(),
      onewaySynonymsAction: map['onewaySynonymsAction'] == null ? null : (GoogleCloudRetailV2betaRuleOnewaySynonymsAction.fromMap((map['onewaySynonymsAction']! as Map).cast<String, dynamic>())).input(),
      redirectAction: map['redirectAction'] == null ? null : (GoogleCloudRetailV2betaRuleRedirectAction.fromMap((map['redirectAction']! as Map).cast<String, dynamic>())).input(),
      removeFacetAction: map['removeFacetAction'] == null ? null : (GoogleCloudRetailV2betaRuleRemoveFacetAction.fromMap((map['removeFacetAction']! as Map).cast<String, dynamic>())).input(),
      replacementAction: map['replacementAction'] == null ? null : (GoogleCloudRetailV2betaRuleReplacementAction.fromMap((map['replacementAction']! as Map).cast<String, dynamic>())).input(),
      twowaySynonymsAction: map['twowaySynonymsAction'] == null ? null : (GoogleCloudRetailV2betaRuleTwowaySynonymsAction.fromMap((map['twowaySynonymsAction']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

