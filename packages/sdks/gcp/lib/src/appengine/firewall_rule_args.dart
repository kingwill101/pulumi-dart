// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_firewall_rule_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_appengine_firewall_rule_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The action to take if this rule matches.
  /// Possible values are: `UNSPECIFIED_ACTION`, `ALLOW`, `DENY`.
  final pulumi.Input<String> action;

  /// An optional string description of this rule.
  final pulumi.Input<String>? description;

  /// A positive integer that defines the order of rule evaluation.
  /// Rules with the lowest priority are evaluated first.
  /// A default rule at priority Int32.MaxValue matches all IPv4 and
  /// IPv6 traffic when no previous rule matches. Only the action of
  /// this rule can be modified by the user.
  final pulumi.Input<int>? priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// IP address or range, defined using CIDR notation, of requests that this rule applies to.
  final pulumi.Input<String> sourceRange;

  /// Creates a new [FirewallRuleArgs].
  /// [action] The action to take if this rule matches.
  /// [description] An optional string description of this rule.
  /// [priority] A positive integer that defines the order of rule evaluation.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceRange] IP address or range, defined using CIDR notation, of requests that this rule applies to.
  FirewallRuleArgs({
    required this.action,
    this.description,
    this.priority,
    this.project,
    required this.sourceRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'priority': ?priority,
      'project': ?project,
      'sourceRange': sourceRange,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceRange: pulumi.Input.fromValue(map['sourceRange'] as String),
    );
  }
}
