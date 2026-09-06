// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_heal_actions.dart';
import 'auto_heal_triggers.dart';

/// Rules that can be defined for auto-heal.
class AutoHealRules {
  /// Actions to be executed when a rule is triggered.
  final pulumi.Input<AutoHealActions?>? actions;
  /// Conditions that describe when to execute the auto-heal actions.
  final pulumi.Input<AutoHealTriggers?>? triggers;

  /// Creates a new [AutoHealRules].
  /// [actions] Actions to be executed when a rule is triggered.
  /// [triggers] Conditions that describe when to execute the auto-heal actions.
  const AutoHealRules({
    this.actions,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<AutoHealActions, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'triggers': ?pulumi.Input.mapOptionalInputValue<AutoHealTriggers, Map<String, dynamic>>(triggers, (value) => value.toMap()),
    };
  }

  factory AutoHealRules.fromMap(Map<String, dynamic> map) {
    return AutoHealRules(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoHealActions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoHealTriggers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
