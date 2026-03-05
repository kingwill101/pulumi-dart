// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_condition.dart';
import 'google_cloud_retail_v2alpha_rule_boost_action.dart';
import 'google_cloud_retail_v2alpha_rule_do_not_associate_action.dart';
import 'google_cloud_retail_v2alpha_rule_filter_action.dart';
import 'google_cloud_retail_v2alpha_rule_force_return_facet_action.dart';
import 'google_cloud_retail_v2alpha_rule_ignore_action.dart';
import 'google_cloud_retail_v2alpha_rule_oneway_synonyms_action.dart';
import 'google_cloud_retail_v2alpha_rule_redirect_action.dart';
import 'google_cloud_retail_v2alpha_rule_remove_facet_action.dart';
import 'google_cloud_retail_v2alpha_rule_replacement_action.dart';
import 'google_cloud_retail_v2alpha_rule_twoway_synonyms_action.dart';

/// A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2alphaRule {
  /// A boost action.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleBoostAction>? boostAction;
  /// The condition that triggers the rule. If the condition is empty, the rule will always apply.
  final pulumi.Input<GoogleCloudRetailV2alphaCondition> condition;
  /// Prevents term from being associated with other terms.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleDoNotAssociateAction>? doNotAssociateAction;
  /// Filters results.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleFilterAction>? filterAction;
  /// Force returns an attribute as a facet in the request.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleForceReturnFacetAction>? forceReturnFacetAction;
  /// Ignores specific terms from query during search.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleIgnoreAction>? ignoreAction;
  /// Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleOnewaySynonymsAction>? onewaySynonymsAction;
  /// Redirects a shopper to a specific page.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleRedirectAction>? redirectAction;
  /// Remove an attribute as a facet in the request (if present).
  final pulumi.Input<GoogleCloudRetailV2alphaRuleRemoveFacetAction>? removeFacetAction;
  /// Replaces specific terms in the query.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleReplacementAction>? replacementAction;
  /// Treats a set of terms as synonyms of one another.
  final pulumi.Input<GoogleCloudRetailV2alphaRuleTwowaySynonymsAction>? twowaySynonymsAction;

  /// Creates a new [GoogleCloudRetailV2alphaRule].
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
  GoogleCloudRetailV2alphaRule({
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
      'boostAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRuleBoostAction, Map<String, dynamic>>(boostAction, (value) => value.toMap()),
      'condition': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'doNotAssociateAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRuleDoNotAssociateAction, Map<String, dynamic>>(doNotAssociateAction, (value) => value.toMap()),
      'filterAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRuleFilterAction, Map<String, dynamic>>(filterAction, (value) => value.toMap()),
      'forceReturnFacetAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRuleForceReturnFacetAction, Map<String, dynamic>>(forceReturnFacetAction, (value) => value.toMap()),
      'ignoreAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRuleIgnoreAction, Map<String, dynamic>>(ignoreAction, (value) => value.toMap()),
      'onewaySynonymsAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRuleOnewaySynonymsAction, Map<String, dynamic>>(onewaySynonymsAction, (value) => value.toMap()),
      'redirectAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRuleRedirectAction, Map<String, dynamic>>(redirectAction, (value) => value.toMap()),
      'removeFacetAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRuleRemoveFacetAction, Map<String, dynamic>>(removeFacetAction, (value) => value.toMap()),
      'replacementAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRuleReplacementAction, Map<String, dynamic>>(replacementAction, (value) => value.toMap()),
      'twowaySynonymsAction': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRuleTwowaySynonymsAction, Map<String, dynamic>>(twowaySynonymsAction, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRetailV2alphaRule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaRule(
      boostAction: (() { final guardedValue = map['boostAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleBoostAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      condition: pulumi.Input.fromValue(GoogleCloudRetailV2alphaCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())),
      doNotAssociateAction: (() { final guardedValue = map['doNotAssociateAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleDoNotAssociateAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filterAction: (() { final guardedValue = map['filterAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleFilterAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceReturnFacetAction: (() { final guardedValue = map['forceReturnFacetAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleForceReturnFacetAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ignoreAction: (() { final guardedValue = map['ignoreAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleIgnoreAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onewaySynonymsAction: (() { final guardedValue = map['onewaySynonymsAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleOnewaySynonymsAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redirectAction: (() { final guardedValue = map['redirectAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleRedirectAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      removeFacetAction: (() { final guardedValue = map['removeFacetAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleRemoveFacetAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replacementAction: (() { final guardedValue = map['replacementAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleReplacementAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      twowaySynonymsAction: (() { final guardedValue = map['twowaySynonymsAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudRetailV2alphaRuleTwowaySynonymsAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

