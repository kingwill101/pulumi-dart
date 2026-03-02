// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_with_rules_predefined_rule.dart';
import 'network_firewall_policy_with_rules_rule.dart';

/// Input properties used for looking up and filtering NetworkFirewallPolicyWithRules resources.
class NetworkFirewallPolicyWithRulesState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  final pulumi.Input<String>? fingerprint;
  /// User-provided name of the Network firewall policy.
  /// The name should be unique in the project in which the firewall policy is created.
  /// The name must be 1-63 characters long, and comply with RFC1035. Specifically,
  /// the name must be 1-63 characters long and match the regular expression a-z?
  /// which means the first character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String>? networkFirewallPolicyId;
  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`.
  final pulumi.Input<String>? policyType;
  /// A list of firewall policy pre-defined rules.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkFirewallPolicyWithRulesPredefinedRule>>? predefinedRules;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  final pulumi.Input<int>? ruleTupleCount;
  /// A list of firewall policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkFirewallPolicyWithRulesRule>>? rules;
  /// Server-defined URL for the resource.
  final pulumi.Input<String>? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final pulumi.Input<String>? selfLinkWithId;

  /// Creates a new [NetworkFirewallPolicyWithRulesState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [fingerprint] Fingerprint of the resource. This field is used internally during updates of this resource.
  /// [name] User-provided name of the Network firewall policy.
  /// [networkFirewallPolicyId] The unique identifier for the resource. This identifier is defined by the server.
  /// [policyType] Policy type is used to determine which resources (networks) the policy can be associated with.
  /// [predefinedRules] A list of firewall policy pre-defined rules.
  /// [project] The ID of the project in which the resource belongs.
  /// [ruleTupleCount] Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  /// [rules] A list of firewall policy rules.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  NetworkFirewallPolicyWithRulesState({
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.name,
    this.networkFirewallPolicyId,
    this.policyType,
    this.predefinedRules,
    this.project,
    this.ruleTupleCount,
    this.rules,
    this.selfLink,
    this.selfLinkWithId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'name': ?name,
      'networkFirewallPolicyId': ?networkFirewallPolicyId,
      'policyType': ?policyType,
      'predefinedRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkFirewallPolicyWithRulesPredefinedRule>, List<Map<String, dynamic>>>(predefinedRules, (value) => pulumi.Input.encodeList<NetworkFirewallPolicyWithRulesPredefinedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'ruleTupleCount': ?ruleTupleCount,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<NetworkFirewallPolicyWithRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<NetworkFirewallPolicyWithRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
    };
  }

  factory NetworkFirewallPolicyWithRulesState.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyWithRulesState(
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkFirewallPolicyId: map['networkFirewallPolicyId'] == null ? null : (map['networkFirewallPolicyId']! as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType']! as String).input(),
      predefinedRules: map['predefinedRules'] == null ? null : (pulumi.Input.decodeList<NetworkFirewallPolicyWithRulesPredefinedRule>(map['predefinedRules']!, (value) => NetworkFirewallPolicyWithRulesPredefinedRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      ruleTupleCount: map['ruleTupleCount'] == null ? null : (map['ruleTupleCount']! as int).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<NetworkFirewallPolicyWithRulesRule>(map['rules']!, (value) => NetworkFirewallPolicyWithRulesRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      selfLinkWithId: map['selfLinkWithId'] == null ? null : (map['selfLinkWithId']! as String).input(),
    );
  }
}

