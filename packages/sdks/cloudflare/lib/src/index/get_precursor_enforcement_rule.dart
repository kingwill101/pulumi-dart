// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrecursorEnforcementRule {
  /// An informative description of the rule.
  final pulumi.Input<String> description;
  /// Whether the rule is active.
  final pulumi.Input<bool> enabled;
  /// The filter expression that determines which requests the rule matches.
  final pulumi.Input<String> expression;
  /// The read-only identifier that Cloudflare assigns to the rule.
  final pulumi.Input<String> id;
  /// The override mode Precursor applies to requests matching an enforcement
  /// rule. Unlike `defaultMode`, this cannot be `off`.
  /// Available values: "min-friction", "max-security".
  final pulumi.Input<String> mode;

  /// Creates a new [GetPrecursorEnforcementRule].
  /// [description] An informative description of the rule.
  /// [enabled] Whether the rule is active.
  /// [expression] The filter expression that determines which requests the rule matches.
  /// [id] The read-only identifier that Cloudflare assigns to the rule.
  /// [mode] The override mode Precursor applies to requests matching an enforcement
  const GetPrecursorEnforcementRule({
    required this.description,
    required this.enabled,
    required this.expression,
    required this.id,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enabled': enabled,
      'expression': expression,
      'id': id,
      'mode': mode,
    };
  }

  factory GetPrecursorEnforcementRule.fromMap(Map<String, dynamic> map) {
    return GetPrecursorEnforcementRule(
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
