// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_page_shield_policy_page_shield_policy_args_doc}
/// The set of arguments for PageShieldPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_page_shield_policy_page_shield_policy_args_doc}
class PageShieldPolicyArgs {
  /// The action to take if the expression matches
  /// Available values: "allow", "log", "add*reporting*directives".
  final pulumi.Input<String> action;
  /// A description for the policy
  final pulumi.Input<String> description;
  /// Whether the policy is enabled
  final pulumi.Input<bool> enabled;
  /// The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
  final pulumi.Input<String> expression;
  /// The policy which will be applied
  final pulumi.Input<String> value;
  /// Identifier
  final pulumi.Input<String> zoneId;

  /// Creates a new [PageShieldPolicyArgs].
  /// [action] The action to take if the expression matches
  /// [description] A description for the policy
  /// [enabled] Whether the policy is enabled
  /// [expression] The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
  /// [value] The policy which will be applied
  /// [zoneId] Identifier
  const PageShieldPolicyArgs({
    required this.action,
    required this.description,
    required this.enabled,
    required this.expression,
    required this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'enabled': enabled,
      'expression': expression,
      'value': value,
      'zoneId': zoneId,
    };
  }

  factory PageShieldPolicyArgs.fromMap(Map<String, dynamic> map) {
    return PageShieldPolicyArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
