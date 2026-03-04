// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_with_rules_rule.dart';

/// {@template pulumi_compute_network_firewall_policy_with_rules_network_firewall_policy_with_rules_args_doc}
/// The set of arguments for NetworkFirewallPolicyWithRules.
/// {@endtemplate}
/// {@macro pulumi_compute_network_firewall_policy_with_rules_network_firewall_policy_with_rules_args_doc}
class NetworkFirewallPolicyWithRulesArgs {
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
  /// Possible values are: `VPC_POLICY`.
  final pulumi.Input<String>? policyType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<NetworkFirewallPolicyWithRulesRule>> rules;

  /// Creates a new [NetworkFirewallPolicyWithRulesArgs].
  /// [description] An optional description of this resource.
  /// [name] User-provided name of the Network firewall policy.
  /// [policyType] Policy type is used to determine which resources (networks) the policy can be associated with.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] A list of firewall policy rules.
  NetworkFirewallPolicyWithRulesArgs({
    this.description,
    this.name,
    this.policyType,
    this.project,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'policyType': ?policyType,
      'project': ?project,
      'rules':
          pulumi.Input.mapInputValue<
            List<NetworkFirewallPolicyWithRulesRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkFirewallPolicyWithRulesRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NetworkFirewallPolicyWithRulesArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyWithRulesArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyType: (() {
        final guardedValue = map['policyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NetworkFirewallPolicyWithRulesRule>(
          map['rules']!,
          (value) => NetworkFirewallPolicyWithRulesRule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
