// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a managed rule group override setting.
class ManagedRuleOverrideResponse {
  /// Describes the override action to be applied when rule matches.
  final pulumi.Input<String>? action;
  /// Identifier for the managed rule.
  final pulumi.Input<String> ruleId;
  /// Describes the override sensitivity to be applied when rule matches.
  final pulumi.Input<String>? sensitivity;
  /// The state of the managed rule. Defaults to Disabled if not specified.
  final pulumi.Input<String>? state;

  /// Creates a new [ManagedRuleOverrideResponse].
  /// [action] Describes the override action to be applied when rule matches.
  /// [ruleId] Identifier for the managed rule.
  /// [sensitivity] Describes the override sensitivity to be applied when rule matches.
  /// [state] The state of the managed rule. Defaults to Disabled if not specified.
  ManagedRuleOverrideResponse({
    this.action,
    required this.ruleId,
    this.sensitivity,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ruleId': ruleId,
      'sensitivity': ?sensitivity,
      'state': ?state,
    };
  }

  factory ManagedRuleOverrideResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRuleOverrideResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      sensitivity: (() { final guardedValue = map['sensitivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

