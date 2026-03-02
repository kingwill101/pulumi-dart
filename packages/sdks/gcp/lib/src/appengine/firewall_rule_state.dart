// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallRule resources.
class FirewallRuleState {
  /// The action to take if this rule matches.
  /// Possible values are: `UNSPECIFIED_ACTION`, `ALLOW`, `DENY`.
  final pulumi.Input<String>? action;
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
  final pulumi.Input<String>? sourceRange;

  /// Creates a new [FirewallRuleState].
  /// [action] The action to take if this rule matches.
  /// [description] An optional string description of this rule.
  /// [priority] A positive integer that defines the order of rule evaluation.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceRange] IP address or range, defined using CIDR notation, of requests that this rule applies to.
  FirewallRuleState({
    this.action,
    this.description,
    this.priority,
    this.project,
    this.sourceRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'priority': ?priority,
      'project': ?project,
      'sourceRange': ?sourceRange,
    };
  }

  factory FirewallRuleState.fromMap(Map<String, dynamic> map) {
    return FirewallRuleState(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sourceRange: map['sourceRange'] == null ? null : (map['sourceRange'] as String).input(),
    );
  }
}

