// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2_condition.dart';
import 'google_cloud_retail_v2_rule_boost_action.dart';
import 'google_cloud_retail_v2_rule_do_not_associate_action.dart';
import 'google_cloud_retail_v2_rule_filter_action.dart';
import 'google_cloud_retail_v2_rule_force_return_facet_action.dart';
import 'google_cloud_retail_v2_rule_ignore_action.dart';
import 'google_cloud_retail_v2_rule_oneway_synonyms_action.dart';
import 'google_cloud_retail_v2_rule_redirect_action.dart';
import 'google_cloud_retail_v2_rule_remove_facet_action.dart';
import 'google_cloud_retail_v2_rule_replacement_action.dart';
import 'google_cloud_retail_v2_rule_twoway_synonyms_action.dart';

/// A rule is a condition-action pair * A condition defines when a rule is to be triggered. * An action specifies what occurs on that trigger. Currently rules only work for controls with SOLUTION_TYPE_SEARCH.
class GoogleCloudRetailV2Rule {
  /// A boost action.
  final GoogleCloudRetailV2RuleBoostAction? boostAction;
  /// The condition that triggers the rule. If the condition is empty, the rule will always apply.
  final GoogleCloudRetailV2Condition condition;
  /// Prevents term from being associated with other terms.
  final GoogleCloudRetailV2RuleDoNotAssociateAction? doNotAssociateAction;
  /// Filters results.
  final GoogleCloudRetailV2RuleFilterAction? filterAction;
  /// Force returns an attribute as a facet in the request.
  final GoogleCloudRetailV2RuleForceReturnFacetAction? forceReturnFacetAction;
  /// Ignores specific terms from query during search.
  final GoogleCloudRetailV2RuleIgnoreAction? ignoreAction;
  /// Treats specific term as a synonym with a group of terms. Group of terms will not be treated as synonyms with the specific term.
  final GoogleCloudRetailV2RuleOnewaySynonymsAction? onewaySynonymsAction;
  /// Redirects a shopper to a specific page.
  final GoogleCloudRetailV2RuleRedirectAction? redirectAction;
  /// Remove an attribute as a facet in the request (if present).
  final GoogleCloudRetailV2RuleRemoveFacetAction? removeFacetAction;
  /// Replaces specific terms in the query.
  final GoogleCloudRetailV2RuleReplacementAction? replacementAction;
  /// Treats a set of terms as synonyms of one another.
  final GoogleCloudRetailV2RuleTwowaySynonymsAction? twowaySynonymsAction;

  /// Creates a new [GoogleCloudRetailV2Rule].
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
  GoogleCloudRetailV2Rule({
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
      'boostAction': ?boostAction == null ? null : boostAction!.toMap(),
      'condition': condition.toMap(),
      'doNotAssociateAction': ?doNotAssociateAction == null ? null : doNotAssociateAction!.toMap(),
      'filterAction': ?filterAction == null ? null : filterAction!.toMap(),
      'forceReturnFacetAction': ?forceReturnFacetAction == null ? null : forceReturnFacetAction!.toMap(),
      'ignoreAction': ?ignoreAction == null ? null : ignoreAction!.toMap(),
      'onewaySynonymsAction': ?onewaySynonymsAction == null ? null : onewaySynonymsAction!.toMap(),
      'redirectAction': ?redirectAction == null ? null : redirectAction!.toMap(),
      'removeFacetAction': ?removeFacetAction == null ? null : removeFacetAction!.toMap(),
      'replacementAction': ?replacementAction == null ? null : replacementAction!.toMap(),
      'twowaySynonymsAction': ?twowaySynonymsAction == null ? null : twowaySynonymsAction!.toMap(),
    };
  }

  factory GoogleCloudRetailV2Rule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2Rule(
      boostAction: map['boostAction'] == null ? null : GoogleCloudRetailV2RuleBoostAction.fromMap((map['boostAction'] as Map).cast<String, dynamic>()),
      condition: GoogleCloudRetailV2Condition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      doNotAssociateAction: map['doNotAssociateAction'] == null ? null : GoogleCloudRetailV2RuleDoNotAssociateAction.fromMap((map['doNotAssociateAction'] as Map).cast<String, dynamic>()),
      filterAction: map['filterAction'] == null ? null : GoogleCloudRetailV2RuleFilterAction.fromMap((map['filterAction'] as Map).cast<String, dynamic>()),
      forceReturnFacetAction: map['forceReturnFacetAction'] == null ? null : GoogleCloudRetailV2RuleForceReturnFacetAction.fromMap((map['forceReturnFacetAction'] as Map).cast<String, dynamic>()),
      ignoreAction: map['ignoreAction'] == null ? null : GoogleCloudRetailV2RuleIgnoreAction.fromMap((map['ignoreAction'] as Map).cast<String, dynamic>()),
      onewaySynonymsAction: map['onewaySynonymsAction'] == null ? null : GoogleCloudRetailV2RuleOnewaySynonymsAction.fromMap((map['onewaySynonymsAction'] as Map).cast<String, dynamic>()),
      redirectAction: map['redirectAction'] == null ? null : GoogleCloudRetailV2RuleRedirectAction.fromMap((map['redirectAction'] as Map).cast<String, dynamic>()),
      removeFacetAction: map['removeFacetAction'] == null ? null : GoogleCloudRetailV2RuleRemoveFacetAction.fromMap((map['removeFacetAction'] as Map).cast<String, dynamic>()),
      replacementAction: map['replacementAction'] == null ? null : GoogleCloudRetailV2RuleReplacementAction.fromMap((map['replacementAction'] as Map).cast<String, dynamic>()),
      twowaySynonymsAction: map['twowaySynonymsAction'] == null ? null : GoogleCloudRetailV2RuleTwowaySynonymsAction.fromMap((map['twowaySynonymsAction'] as Map).cast<String, dynamic>()),
    );
  }
}

