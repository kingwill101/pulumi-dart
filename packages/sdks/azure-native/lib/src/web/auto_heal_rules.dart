// ignore_for_file: unused_element, unnecessary_cast

import 'auto_heal_actions.dart';
import 'auto_heal_triggers.dart';

/// Rules that can be defined for auto-heal.
class AutoHealRules {
  /// Actions to be executed when a rule is triggered.
  final AutoHealActions? actions;
  /// Conditions that describe when to execute the auto-heal actions.
  final AutoHealTriggers? triggers;

  /// Creates a new [AutoHealRules].
  /// [actions] Actions to be executed when a rule is triggered.
  /// [triggers] Conditions that describe when to execute the auto-heal actions.
  AutoHealRules({
    this.actions,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : actions!.toMap(),
      'triggers': ?triggers == null ? null : triggers!.toMap(),
    };
  }

  factory AutoHealRules.fromMap(Map<String, dynamic> map) {
    return AutoHealRules(
      actions: map['actions'] == null ? null : AutoHealActions.fromMap((map['actions'] as Map).cast<String, dynamic>()),
      triggers: map['triggers'] == null ? null : AutoHealTriggers.fromMap((map['triggers'] as Map).cast<String, dynamic>()),
    );
  }
}

