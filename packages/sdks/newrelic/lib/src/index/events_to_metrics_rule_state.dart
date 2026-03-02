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
    this.accountId,
    this.description,
    this.enabled,
    this.name,
    this.nrql,
    this.ruleId,
  });

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
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nrql: map['nrql'] == null ? null : (map['nrql']! as String).input(),
      ruleId: map['ruleId'] == null ? null : (map['ruleId']! as String).input(),
    );
  }
}

