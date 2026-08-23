// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyPolicySettingsLogScrubbingRule {
  /// Describes if the managed rule is in enabled state or disabled state. Defaults to `false`.
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<String> matchVariable;
  /// When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to.
  final pulumi.Input<String>? selector;
  final pulumi.Input<String>? selectorMatchOperator;

  /// Creates a new [PolicyPolicySettingsLogScrubbingRule].
  /// [enabled] Describes if the managed rule is in enabled state or disabled state. Defaults to `false`.
  /// [matchVariable] Required.
  /// [selector] When matchVariable is a collection, operator used to specify which elements in the collection this rule applies to.
  /// [selectorMatchOperator] Optional.
  const PolicyPolicySettingsLogScrubbingRule({
    this.enabled,
    required this.matchVariable,
    this.selector,
    this.selectorMatchOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'matchVariable': matchVariable,
      'selector': ?selector,
      'selectorMatchOperator': ?selectorMatchOperator,
    };
  }

  factory PolicyPolicySettingsLogScrubbingRule.fromMap(Map<String, dynamic> map) {
    return PolicyPolicySettingsLogScrubbingRule(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      matchVariable: pulumi.Input.fromValue(map['matchVariable'] as String),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selectorMatchOperator: (() { final guardedValue = map['selectorMatchOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
