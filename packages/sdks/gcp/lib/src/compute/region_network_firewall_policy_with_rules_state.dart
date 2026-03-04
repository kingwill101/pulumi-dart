// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_with_rules_predefined_rule.dart';
import 'region_network_firewall_policy_with_rules_rule.dart';

/// Input properties used for looking up and filtering RegionNetworkFirewallPolicyWithRules resources.
class RegionNetworkFirewallPolicyWithRulesState {
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
  /// Possible values are: `VPC_POLICY`, `RDMA_ROCE_POLICY`.
  final pulumi.Input<String>? policyType;

  /// A list of firewall policy pre-defined rules.
  /// Structure is documented below.
  final pulumi.Input<List<RegionNetworkFirewallPolicyWithRulesPredefinedRule>>?
  predefinedRules;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of this resource.
  final pulumi.Input<String>? region;

  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  final pulumi.Input<int>? ruleTupleCount;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<RegionNetworkFirewallPolicyWithRulesRule>>? rules;

  /// Server-defined URL for the resource.
  final pulumi.Input<String>? selfLink;

  /// Server-defined URL for this resource with the resource id.
  final pulumi.Input<String>? selfLinkWithId;

  /// Creates a new [RegionNetworkFirewallPolicyWithRulesState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [fingerprint] Fingerprint of the resource. This field is used internally during updates of this resource.
  /// [name] User-provided name of the Network firewall policy.
  /// [networkFirewallPolicyId] The unique identifier for the resource. This identifier is defined by the server.
  /// [policyType] Policy type is used to determine which resources (networks) the policy can be associated with.
  /// [predefinedRules] A list of firewall policy pre-defined rules.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of this resource.
  /// [ruleTupleCount] Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  /// [rules] A list of firewall policy rules.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  RegionNetworkFirewallPolicyWithRulesState({
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.name,
    this.networkFirewallPolicyId,
    this.policyType,
    this.predefinedRules,
    this.project,
    this.region,
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
      'predefinedRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionNetworkFirewallPolicyWithRulesPredefinedRule>,
            List<Map<String, dynamic>>
          >(
            predefinedRules,
            (value) =>
                pulumi.Input.encodeList<
                  RegionNetworkFirewallPolicyWithRulesPredefinedRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'region': ?region,
      'ruleTupleCount': ?ruleTupleCount,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionNetworkFirewallPolicyWithRulesRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  RegionNetworkFirewallPolicyWithRulesRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
    };
  }

  factory RegionNetworkFirewallPolicyWithRulesState.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionNetworkFirewallPolicyWithRulesState(
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkFirewallPolicyId: (() {
        final guardedValue = map['networkFirewallPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyType: (() {
        final guardedValue = map['policyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      predefinedRules: (() {
        final guardedValue = map['predefinedRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RegionNetworkFirewallPolicyWithRulesPredefinedRule
          >(
            guardedValue,
            (value) =>
                RegionNetworkFirewallPolicyWithRulesPredefinedRule.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
          pulumi.Input.decodeList<RegionNetworkFirewallPolicyWithRulesRule>(
            guardedValue,
            (value) => RegionNetworkFirewallPolicyWithRulesRule.fromMap(
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
    );
  }
}
