// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventsToMetricsRule resources.
class EventsToMetricsRuleState {
  /// Account with the event and where the metrics will be put.
  final pulumi.Input<String>? accountId;
  /// Provides additional information about the rule.
  final pulumi.Input<String>? description;
  /// True means this rule is enabled. False means the rule is currently not creating metrics.
  final pulumi.Input<bool>? enabled;
  /// The name of the rule. This must be unique within an account.
  final pulumi.Input<String>? name;
  /// Explains how to create metrics from events.
  final pulumi.Input<String>? nrql;
  /// The id, uniquely identifying the rule.
  final pulumi.Input<String>? ruleId;

  /// Creates a new [EventsToMetricsRuleState].
  /// [accountId] Account with the event and where the metrics will be put.
  /// [description] Provides additional information about the rule.
  /// [enabled] True means this rule is enabled. False means the rule is currently not creating metrics.
  /// [name] The name of the rule. This must be unique within an account.
  /// [nrql] Explains how to create metrics from events.
  /// [ruleId] The id, uniquely identifying the rule.
  EventsToMetricsRuleState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nrql,
    pulumi.Output<String>? ruleId,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      nrql = pulumi.Input.asOptionalInput<String>(nrql),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'nrql': ?nrql,
      'ruleId': ?ruleId,
    };
  }

  factory EventsToMetricsRuleState.fromMap(Map<String, dynamic> map) {
    return EventsToMetricsRuleState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nrql: map['nrql'] == null ? null : pulumi.Output.create<String>(map['nrql'] as String),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
    );
  }
}

