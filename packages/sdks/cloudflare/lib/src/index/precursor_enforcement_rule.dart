// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrecursorEnforcementRule {
  /// An informative description of the rule.
  final pulumi.Input<String?>? description;
  /// Whether the rule is active.
  final pulumi.Input<bool?>? enabled;
  /// The filter expression that determines which requests the rule matches.
  final pulumi.Input<String> expression;
  /// The read-only identifier that Cloudflare assigns to the rule.
  final pulumi.Input<String?>? id;
  /// The override mode Precursor applies to requests matching an enforcement
  /// rule. Unlike `defaultMode`, this cannot be `off`.
  /// Available values: "min-friction", "max-security".
  final pulumi.Input<String> mode;

  /// Creates a new [PrecursorEnforcementRule].
  /// [description] An informative description of the rule.
  /// [enabled] Whether the rule is active.
  /// [expression] The filter expression that determines which requests the rule matches.
  /// [id] The read-only identifier that Cloudflare assigns to the rule.
  /// [mode] The override mode Precursor applies to requests matching an enforcement
  const PrecursorEnforcementRule({
    this.description,
    this.enabled,
    required this.expression,
    this.id,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': ?enabled,
      'expression': expression,
      'id': ?id,
      'mode': mode,
    };
  }

  factory PrecursorEnforcementRule.fromMap(Map<String, dynamic> map) {
    return PrecursorEnforcementRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
