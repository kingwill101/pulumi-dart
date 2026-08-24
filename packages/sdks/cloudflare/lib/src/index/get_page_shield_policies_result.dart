// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPageShieldPoliciesResult {
  /// The action to take if the expression matches
  /// Available values: "allow", "log", "add*reporting*directives".
  final pulumi.Input<String> action;
  /// A description for the policy
  final pulumi.Input<String> description;
  /// Whether the policy is enabled
  final pulumi.Input<bool> enabled;
  /// The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
  final pulumi.Input<String> expression;
  /// Identifier
  final pulumi.Input<String> id;
  /// The policy which will be applied
  final pulumi.Input<String> value;

  /// Creates a new [GetPageShieldPoliciesResult].
  /// [action] The action to take if the expression matches
  /// [description] A description for the policy
  /// [enabled] Whether the policy is enabled
  /// [expression] The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
  /// [id] Identifier
  /// [value] The policy which will be applied
  const GetPageShieldPoliciesResult({
    required this.action,
    required this.description,
    required this.enabled,
    required this.expression,
    required this.id,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'enabled': enabled,
      'expression': expression,
      'id': id,
      'value': value,
    };
  }

  factory GetPageShieldPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetPageShieldPoliciesResult(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
