// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_heal_actions_response.dart';
import 'auto_heal_triggers_response.dart';

/// Rules that can be defined for auto-heal.
class AutoHealRulesResponse {
  /// Actions to be executed when a rule is triggered.
  final pulumi.Input<AutoHealActionsResponse>? actions;
  /// Conditions that describe when to execute the auto-heal actions.
  final pulumi.Input<AutoHealTriggersResponse>? triggers;

  /// Creates a new [AutoHealRulesResponse].
  /// [actions] Actions to be executed when a rule is triggered.
  /// [triggers] Conditions that describe when to execute the auto-heal actions.
  AutoHealRulesResponse({
    this.actions,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<AutoHealActionsResponse, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'triggers': ?pulumi.Input.mapOptionalInputValue<AutoHealTriggersResponse, Map<String, dynamic>>(triggers, (value) => value.toMap()),
    };
  }

  factory AutoHealRulesResponse.fromMap(Map<String, dynamic> map) {
    return AutoHealRulesResponse(
      actions: map['actions'] == null ? null : (AutoHealActionsResponse.fromMap((map['actions'] as Map).cast<String, dynamic>())).input(),
      triggers: map['triggers'] == null ? null : (AutoHealTriggersResponse.fromMap((map['triggers'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

