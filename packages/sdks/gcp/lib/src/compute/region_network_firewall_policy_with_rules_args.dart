// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_with_rules_rule.dart';

/// {@template pulumi_compute_region_network_firewall_policy_with_rules_region_network_firewall_policy_with_rules_args_doc}
/// The set of arguments for RegionNetworkFirewallPolicyWithRules.
/// {@endtemplate}
/// {@macro pulumi_compute_region_network_firewall_policy_with_rules_region_network_firewall_policy_with_rules_args_doc}
class RegionNetworkFirewallPolicyWithRulesArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// User-provided name of the Network firewall policy.
  /// The name should be unique in the project in which the firewall policy is created.
  /// The name must be 1-63 characters long, and comply with RFC1035. Specifically,
  /// the name must be 1-63 characters long and match the regular expression a-z?
  /// which means the first character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`, `RDMA_ROCE_POLICY`.
  final pulumi.Input<String>? policyType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of this resource.
  final pulumi.Input<String>? region;
  /// A list of firewall policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<RegionNetworkFirewallPolicyWithRulesRule>> rules;

  /// Creates a new [RegionNetworkFirewallPolicyWithRulesArgs].
  /// [description] An optional description of this resource.
  /// [name] User-provided name of the Network firewall policy.
  /// [policyType] Policy type is used to determine which resources (networks) the policy can be associated with.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of this resource.
  /// [rules] A list of firewall policy rules.
  RegionNetworkFirewallPolicyWithRulesArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyType,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    required pulumi.Output<List<RegionNetworkFirewallPolicyWithRulesRule>> rules,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asInput<List<RegionNetworkFirewallPolicyWithRulesRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'policyType': ?policyType,
      'project': ?project,
      'region': ?region,
      'rules': pulumi.Input.mapInputValue<List<RegionNetworkFirewallPolicyWithRulesRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RegionNetworkFirewallPolicyWithRulesRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionNetworkFirewallPolicyWithRulesArgs.fromMap(Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyWithRulesArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: pulumi.Output.create<List<RegionNetworkFirewallPolicyWithRulesRule>>(pulumi.Input.decodeList<RegionNetworkFirewallPolicyWithRulesRule>(map['rules'], (value) => RegionNetworkFirewallPolicyWithRulesRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

