// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a managed rule group override setting.
class ManagedRuleOverride {
  /// Describes the override action to be applied when rule matches.
  final pulumi.Input<String>? action;
  /// Identifier for the managed rule.
  final pulumi.Input<String> ruleId;
  /// Describes the override sensitivity to be applied when rule matches.
  final pulumi.Input<String>? sensitivity;
  /// The state of the managed rule. Defaults to Disabled if not specified.
  final pulumi.Input<String>? state;

  /// Creates a new [ManagedRuleOverride].
  /// [action] Describes the override action to be applied when rule matches.
  /// [ruleId] Identifier for the managed rule.
  /// [sensitivity] Describes the override sensitivity to be applied when rule matches.
  /// [state] The state of the managed rule. Defaults to Disabled if not specified.
  ManagedRuleOverride({
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

  factory ManagedRuleOverride.fromMap(Map<String, dynamic> map) {
    return ManagedRuleOverride(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      ruleId: (map['ruleId'] as String).input(),
      sensitivity: map['sensitivity'] == null ? null : (map['sensitivity']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

