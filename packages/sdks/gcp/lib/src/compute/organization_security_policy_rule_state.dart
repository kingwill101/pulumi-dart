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
      'match':
          ?pulumi.Input.mapOptionalInputValue<
            OrganizationSecurityPolicyRuleMatch,
            Map<String, dynamic>
          >(match, (value) => value.toMap()),
      'policyId': ?policyId,
      'preview': ?preview,
      'priority': ?priority,
      'targetResources': ?targetResources,
      'targetServiceAccounts': ?targetServiceAccounts,
    };
  }

  factory OrganizationSecurityPolicyRuleState.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrganizationSecurityPolicyRuleState(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      direction: (() {
        final guardedValue = map['direction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableLogging: (() {
        final guardedValue = map['enableLogging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      match: (() {
        final guardedValue = map['match'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OrganizationSecurityPolicyRuleMatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preview: (() {
        final guardedValue = map['preview'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      targetResources: (() {
        final guardedValue = map['targetResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      targetServiceAccounts: (() {
        final guardedValue = map['targetServiceAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
