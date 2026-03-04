// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_with_rules_predefined_rule.dart';
import 'firewall_policy_with_rules_rule.dart';

/// Input properties used for looking up and filtering FirewallPolicyWithRules resources.
class FirewallPolicyWithRulesState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  final pulumi.Input<String>? fingerprint;

  /// The parent of this FirewallPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  final pulumi.Input<String>? parent;

  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String>? policyId;

  /// A list of pre-define firewall policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<FirewallPolicyWithRulesPredefinedRule>>?
  predefinedRules;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  final pulumi.Input<int>? ruleTupleCount;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<FirewallPolicyWithRulesRule>>? rules;

  /// Server-defined URL for the resource.
  final pulumi.Input<String>? selfLink;

  /// Server-defined URL for this resource with the resource id.
  final pulumi.Input<String>? selfLinkWithId;

  /// A textual name of the security policy.
  final pulumi.Input<String>? shortName;

  /// Creates a new [FirewallPolicyWithRulesState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [fingerprint] Fingerprint of the resource. This field is used internally during updates of this resource.
  /// [parent] The parent of this FirewallPolicy in the Cloud Resource Hierarchy.
  /// [policyId] The unique identifier for the resource. This identifier is defined by the server.
  /// [predefinedRules] A list of pre-define firewall policy rules.
  /// [ruleTupleCount] Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  /// [rules] A list of firewall policy rules.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [shortName] A textual name of the security policy.
  FirewallPolicyWithRulesState({
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.parent,
    this.policyId,
    this.predefinedRules,
    this.ruleTupleCount,
    this.rules,
    this.selfLink,
    this.selfLinkWithId,
    this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'parent': ?parent,
      'policyId': ?policyId,
      'predefinedRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallPolicyWithRulesPredefinedRule>,
            List<Map<String, dynamic>>
          >(
            predefinedRules,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallPolicyWithRulesPredefinedRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ruleTupleCount': ?ruleTupleCount,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallPolicyWithRulesRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallPolicyWithRulesRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'shortName': ?shortName,
    };
  }

  factory FirewallPolicyWithRulesState.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyWithRulesState(
      creationTimestamp: (() {
        final guardedValue = map['creationTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fingerprint: (() {
        final guardedValue = map['fingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      predefinedRules: (() {
        final guardedValue = map['predefinedRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FirewallPolicyWithRulesPredefinedRule>(
            guardedValue,
            (value) => FirewallPolicyWithRulesPredefinedRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ruleTupleCount: (() {
        final guardedValue = map['ruleTupleCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FirewallPolicyWithRulesRule>(
            guardedValue,
            (value) => FirewallPolicyWithRulesRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      selfLink: (() {
        final guardedValue = map['selfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      selfLinkWithId: (() {
        final guardedValue = map['selfLinkWithId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shortName: (() {
        final guardedValue = map['shortName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
