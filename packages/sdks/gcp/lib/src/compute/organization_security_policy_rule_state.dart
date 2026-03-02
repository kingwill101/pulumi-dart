// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_rule_match.dart';

/// Input properties used for looking up and filtering OrganizationSecurityPolicyRule resources.
class OrganizationSecurityPolicyRuleState {
  /// The Action to perform when the client connection triggers the rule. Can currently be either
  /// "allow", "deny" or "goto_next".
  final pulumi.Input<String>? action;
  /// A description of the rule.
  final pulumi.Input<String>? description;
  /// The direction in which this rule applies. If unspecified an INGRESS rule is created.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final pulumi.Input<String>? direction;
  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the
  /// configured export destination in Stackdriver.
  final pulumi.Input<bool>? enableLogging;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSecurityPolicyRuleMatch>? match;
  /// The ID of the OrganizationSecurityPolicy this rule applies to.
  final pulumi.Input<String>? policyId;
  /// If set to true, the specified action is not enforced.
  final pulumi.Input<bool>? preview;
  /// An integer indicating the priority of a rule in the list. The priority must be a value
  /// between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
  /// highest priority and 2147483647 is the lowest prority.
  final pulumi.Input<int>? priority;
  /// A list of network resource URLs to which this rule applies.
  /// This field allows you to control which network's VMs get
  /// this rule. If this field is left blank, all VMs
  /// within the organization will receive the rule.
  final pulumi.Input<List<String>>? targetResources;
  /// A list of service accounts indicating the sets of
  /// instances that are applied with this rule.
  final pulumi.Input<List<String>>? targetServiceAccounts;

  /// Creates a new [OrganizationSecurityPolicyRuleState].
  /// [action] The Action to perform when the client connection triggers the rule. Can currently be either
  /// [description] A description of the rule.
  /// [direction] The direction in which this rule applies. If unspecified an INGRESS rule is created.
  /// [enableLogging] Denotes whether to enable logging for a particular rule.
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [policyId] The ID of the OrganizationSecurityPolicy this rule applies to.
  /// [preview] If set to true, the specified action is not enforced.
  /// [priority] An integer indicating the priority of a rule in the list. The priority must be a value
  /// [targetResources] A list of network resource URLs to which this rule applies.
  /// [targetServiceAccounts] A list of service accounts indicating the sets of
  OrganizationSecurityPolicyRuleState({
    this.action,
    this.description,
    this.direction,
    this.enableLogging,
    this.match,
    this.policyId,
    this.preview,
    this.priority,
    this.targetResources,
    this.targetServiceAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'direction': ?direction,
      'enableLogging': ?enableLogging,
      'match': ?pulumi.Input.mapOptionalInputValue<OrganizationSecurityPolicyRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'policyId': ?policyId,
      'preview': ?preview,
      'priority': ?priority,
      'targetResources': ?targetResources,
      'targetServiceAccounts': ?targetServiceAccounts,
    };
  }

  factory OrganizationSecurityPolicyRuleState.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleState(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      direction: map['direction'] == null ? null : (map['direction'] as String).input(),
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging'] as bool).input(),
      match: map['match'] == null ? null : (OrganizationSecurityPolicyRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>())).input(),
      policyId: map['policyId'] == null ? null : (map['policyId'] as String).input(),
      preview: map['preview'] == null ? null : (map['preview'] as bool).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      targetResources: map['targetResources'] == null ? null : ((map['targetResources'] as List).cast<String>()).input(),
      targetServiceAccounts: map['targetServiceAccounts'] == null ? null : ((map['targetServiceAccounts'] as List).cast<String>()).input(),
    );
  }
}

