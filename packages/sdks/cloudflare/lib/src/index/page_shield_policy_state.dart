// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PageShieldPolicy resources.
class PageShieldPolicyState {
  /// The action to take if the expression matches
  /// Available values: "allow", "log", "add*reporting*directives".
  final pulumi.Input<String?>? action;
  /// A description for the policy
  final pulumi.Input<String?>? description;
  /// Whether the policy is enabled
  final pulumi.Input<bool?>? enabled;
  /// The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
  final pulumi.Input<String?>? expression;
  /// The policy which will be applied
  final pulumi.Input<String?>? value;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [PageShieldPolicyState].
  /// [action] The action to take if the expression matches
  /// [description] A description for the policy
  /// [enabled] Whether the policy is enabled
  /// [expression] The expression which must match for the policy to be applied, using the Cloudflare Firewall rule expression syntax
  /// [value] The policy which will be applied
  /// [zoneId] Identifier
  const PageShieldPolicyState({
    this.action,
    this.description,
    this.enabled,
    this.expression,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'enabled': ?enabled,
      'expression': ?expression,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory PageShieldPolicyState.fromMap(Map<String, dynamic> map) {
    return PageShieldPolicyState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
