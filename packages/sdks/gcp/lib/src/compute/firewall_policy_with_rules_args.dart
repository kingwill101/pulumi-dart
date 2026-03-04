// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_with_rules_rule.dart';

/// {@template pulumi_compute_firewall_policy_with_rules_firewall_policy_with_rules_args_doc}
/// The set of arguments for FirewallPolicyWithRules.
/// {@endtemplate}
/// {@macro pulumi_compute_firewall_policy_with_rules_firewall_policy_with_rules_args_doc}
class FirewallPolicyWithRulesArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// The parent of this FirewallPolicy in the Cloud Resource Hierarchy.
  /// Format: organizations/{organization_id} or folders/{folder_id}
  final pulumi.Input<String> parent;

  /// A list of firewall policy rules.
  /// Structure is documented below.
  final pulumi.Input<List<FirewallPolicyWithRulesRule>> rules;

  /// A textual name of the security policy.
  final pulumi.Input<String> shortName;

  /// Creates a new [FirewallPolicyWithRulesArgs].
  /// [description] An optional description of this resource.
  /// [parent] The parent of this FirewallPolicy in the Cloud Resource Hierarchy.
  /// [rules] A list of firewall policy rules.
  /// [shortName] A textual name of the security policy.
  FirewallPolicyWithRulesArgs({
    this.description,
    required this.parent,
    required this.rules,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'parent': parent,
      'rules':
          pulumi.Input.mapInputValue<
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
      'shortName': shortName,
    };
  }

  factory FirewallPolicyWithRulesArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyWithRulesArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      rules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<FirewallPolicyWithRulesRule>(
          map['rules']!,
          (value) => FirewallPolicyWithRulesRule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      shortName: pulumi.Input.fromValue(map['shortName'] as String),
    );
  }
}
