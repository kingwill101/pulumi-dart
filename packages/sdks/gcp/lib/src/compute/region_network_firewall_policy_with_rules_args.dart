// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_with_rules_rule.dart';

/// {@template pulumi_compute_region_network_firewall_policy_with_rules_region_network_firewall_policy_with_rules_args_doc}
/// The set of arguments for RegionNetworkFirewallPolicyWithRules.
/// {@endtemplate}
/// {@macro pulumi_compute_region_network_firewall_policy_with_rules_region_network_firewall_policy_with_rules_args_doc}
class RegionNetworkFirewallPolicyWithRulesArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// User-provided name of the Network firewall policy.
  /// The name should be unique in the project in which the firewall policy is created.
  /// The name must be 1-63 characters long, and comply with RFC1035. Specifically,
  /// the name must be 1-63 characters long and match the regular expression a-z?
  /// which means the first character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`, `RDMA_ROCE_POLICY`, `RDMA_FALCON_POLICY`, `ULL_POLICY`.
  final pulumi.Input<String?>? policyType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The region of this resource.
  final pulumi.Input<String?>? region;
  /// A list of firewall policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<RegionNetworkFirewallPolicyWithRulesRule>> rules;

  /// Creates a new [RegionNetworkFirewallPolicyWithRulesArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [name] User-provided name of the Network firewall policy.
  /// [policyType] Policy type is used to determine which resources (networks) the policy can be associated with.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of this resource.
  /// [rules] A list of firewall policy rules.
  const RegionNetworkFirewallPolicyWithRulesArgs({
    this.deletionPolicy,
    this.description,
    this.name,
    this.policyType,
    this.project,
    this.region,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<RegionNetworkFirewallPolicyWithRulesRule>(map['rules']!, (value) => RegionNetworkFirewallPolicyWithRulesRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
