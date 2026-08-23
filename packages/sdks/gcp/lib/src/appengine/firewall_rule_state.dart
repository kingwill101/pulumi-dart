// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallRule resources.
class FirewallRuleState {
  /// The action to take if this rule matches.
  /// Possible values are: `UNSPECIFIED_ACTION`, `ALLOW`, `DENY`.
  final pulumi.Input<String>? action;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional string description of this rule.
  /// [priority] A positive integer that defines the order of rule evaluation.
  /// [project] The ID of the project in which the resource belongs.
  /// [sourceRange] IP address or range, defined using CIDR notation, of requests that this rule applies to.
  const FirewallRuleState({
    this.action,
    this.deletionPolicy,
    this.description,
    this.priority,
    this.project,
    this.sourceRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'priority': ?priority,
      'project': ?project,
      'sourceRange': ?sourceRange,
    };
  }

  factory FirewallRuleState.fromMap(Map<String, dynamic> map) {
    return FirewallRuleState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRange: (() { final guardedValue = map['sourceRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
