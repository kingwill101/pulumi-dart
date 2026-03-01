// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_compound_condition_component_condition.dart';

/// Input properties used for looking up and filtering AlertCompoundCondition resources.
class AlertCompoundConditionState {
  /// The New Relic account ID for managing your compound alert conditions. Defaults to the account ID set in your environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// The list of conditions to be combined. Each component condition must be enabled. Must include at least 2. See Component Conditions below for details.
  final pulumi.Input<List<AlertCompoundConditionComponentCondition>>? componentConditions;
  /// Whether or not the compound alert condition is enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// How the compound condition will take into account the component conditions' facets during evaluation. Valid values are:
  /// - `FACETS_IGNORED` - (Default) Facets are not taken into consideration when determining when the compound alert condition activates
  /// - `FACETS_MATCH` - The compound alert condition will activate only when shared facets have matching values
  final pulumi.Input<String>? facetMatchingBehavior;
  /// The title of the compound alert condition.
  final pulumi.Input<String>? name;
  /// The ID of the policy where this alert compound condition should be used.
  final pulumi.Input<String>? policyId;
  /// Runbook URL to display in notifications.
  final pulumi.Input<String>? runbookUrl;
  /// The duration, in seconds, that the trigger expression must be true before the compound alert condition will activate. Between 30-86400 seconds.
  final pulumi.Input<int>? thresholdDuration;
  /// Expression that defines how component condition evaluations are combined. Valid operators are 'AND', 'OR', 'NOT'. For more complex expressions, use parentheses. Use the aliases from `component_conditions` to build expressions like `"A AND B"`, `"A OR B"`, `"(A AND B) OR C"`, or `"A AND (B OR C) AND NOT (D AND E)"`.
  final pulumi.Input<String>? triggerExpression;

  /// Creates a new [AlertCompoundConditionState].
  /// [accountId] The New Relic account ID for managing your compound alert conditions. Defaults to the account ID set in your environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [componentConditions] The list of conditions to be combined. Each component condition must be enabled. Must include at least 2. See Component Conditions below for details.
  /// [enabled] Whether or not the compound alert condition is enabled. Defaults to `true`.
  /// [facetMatchingBehavior] How the compound condition will take into account the component conditions' facets during evaluation. Valid values are:
  /// [name] The title of the compound alert condition.
  /// [policyId] The ID of the policy where this alert compound condition should be used.
  /// [runbookUrl] Runbook URL to display in notifications.
  /// [thresholdDuration] The duration, in seconds, that the trigger expression must be true before the compound alert condition will activate. Between 30-86400 seconds.
  /// [triggerExpression] Expression that defines how component condition evaluations are combined. Valid operators are 'AND', 'OR', 'NOT'. For more complex expressions, use parentheses. Use the aliases from `component_conditions` to build expressions like `"A AND B"`, `"A OR B"`, `"(A AND B) OR C"`, or `"A AND (B OR C) AND NOT (D AND E)"`.
  AlertCompoundConditionState({
    pulumi.Output<String>? accountId,
    pulumi.Output<List<AlertCompoundConditionComponentCondition>>? componentConditions,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? facetMatchingBehavior,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyId,
    pulumi.Output<String>? runbookUrl,
    pulumi.Output<int>? thresholdDuration,
    pulumi.Output<String>? triggerExpression,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      componentConditions = pulumi.Input.asOptionalInput<List<AlertCompoundConditionComponentCondition>>(componentConditions),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      facetMatchingBehavior = pulumi.Input.asOptionalInput<String>(facetMatchingBehavior),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      runbookUrl = pulumi.Input.asOptionalInput<String>(runbookUrl),
      thresholdDuration = pulumi.Input.asOptionalInput<int>(thresholdDuration),
      triggerExpression = pulumi.Input.asOptionalInput<String>(triggerExpression);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'componentConditions': ?pulumi.Input.mapOptionalInputValue<List<AlertCompoundConditionComponentCondition>, List<Map<String, dynamic>>>(componentConditions, (value) => pulumi.Input.encodeList<AlertCompoundConditionComponentCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'facetMatchingBehavior': ?facetMatchingBehavior,
      'name': ?name,
      'policyId': ?policyId,
      'runbookUrl': ?runbookUrl,
      'thresholdDuration': ?thresholdDuration,
      'triggerExpression': ?triggerExpression,
    };
  }

  factory AlertCompoundConditionState.fromMap(Map<String, dynamic> map) {
    return AlertCompoundConditionState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      componentConditions: map['componentConditions'] == null ? null : pulumi.Output.create<List<AlertCompoundConditionComponentCondition>>(pulumi.Input.decodeList<AlertCompoundConditionComponentCondition>(map['componentConditions'], (value) => AlertCompoundConditionComponentCondition.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      facetMatchingBehavior: map['facetMatchingBehavior'] == null ? null : pulumi.Output.create<String>(map['facetMatchingBehavior'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      runbookUrl: map['runbookUrl'] == null ? null : pulumi.Output.create<String>(map['runbookUrl'] as String),
      thresholdDuration: map['thresholdDuration'] == null ? null : pulumi.Output.create<int>(map['thresholdDuration'] as int),
      triggerExpression: map['triggerExpression'] == null ? null : pulumi.Output.create<String>(map['triggerExpression'] as String),
    );
  }
}

