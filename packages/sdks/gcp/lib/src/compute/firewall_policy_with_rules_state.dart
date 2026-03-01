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
  final pulumi.Input<List<FirewallPolicyWithRulesPredefinedRule>>? predefinedRules;
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
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? policyId,
    pulumi.Output<List<FirewallPolicyWithRulesPredefinedRule>>? predefinedRules,
    pulumi.Output<int>? ruleTupleCount,
    pulumi.Output<List<FirewallPolicyWithRulesRule>>? rules,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? selfLinkWithId,
    pulumi.Output<String>? shortName,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      predefinedRules = pulumi.Input.asOptionalInput<List<FirewallPolicyWithRulesPredefinedRule>>(predefinedRules),
      ruleTupleCount = pulumi.Input.asOptionalInput<int>(ruleTupleCount),
      rules = pulumi.Input.asOptionalInput<List<FirewallPolicyWithRulesRule>>(rules),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      selfLinkWithId = pulumi.Input.asOptionalInput<String>(selfLinkWithId),
      shortName = pulumi.Input.asOptionalInput<String>(shortName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'parent': ?parent,
      'policyId': ?policyId,
      'predefinedRules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyWithRulesPredefinedRule>, List<Map<String, dynamic>>>(predefinedRules, (value) => pulumi.Input.encodeList<FirewallPolicyWithRulesPredefinedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleTupleCount': ?ruleTupleCount,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyWithRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallPolicyWithRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'shortName': ?shortName,
    };
  }

  factory FirewallPolicyWithRulesState.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyWithRulesState(
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      predefinedRules: map['predefinedRules'] == null ? null : pulumi.Output.create<List<FirewallPolicyWithRulesPredefinedRule>>(pulumi.Input.decodeList<FirewallPolicyWithRulesPredefinedRule>(map['predefinedRules'], (value) => FirewallPolicyWithRulesPredefinedRule.fromMap((value as Map).cast<String, dynamic>()))),
      ruleTupleCount: map['ruleTupleCount'] == null ? null : pulumi.Output.create<int>(map['ruleTupleCount'] as int),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<FirewallPolicyWithRulesRule>>(pulumi.Input.decodeList<FirewallPolicyWithRulesRule>(map['rules'], (value) => FirewallPolicyWithRulesRule.fromMap((value as Map).cast<String, dynamic>()))),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      selfLinkWithId: map['selfLinkWithId'] == null ? null : pulumi.Output.create<String>(map['selfLinkWithId'] as String),
      shortName: map['shortName'] == null ? null : pulumi.Output.create<String>(map['shortName'] as String),
    );
  }
}

