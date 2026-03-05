// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_heal_action_type.dart';
import 'auto_heal_custom_action.dart';

/// Actions which to take by the auto-heal module when a rule is triggered.
class AutoHealActions {
  /// Predefined action to be taken.
  final pulumi.Input<AutoHealActionType>? actionType;
  /// Custom action to be taken.
  final pulumi.Input<AutoHealCustomAction>? customAction;
  /// Minimum time the process must execute
  /// before taking the action
  final pulumi.Input<String>? minProcessExecutionTime;

  /// Creates a new [AutoHealActions].
  /// [actionType] Predefined action to be taken.
  /// [customAction] Custom action to be taken.
  /// [minProcessExecutionTime] Minimum time the process must execute
  AutoHealActions({
    this.actionType,
    this.customAction,
    this.minProcessExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?pulumi.Input.mapOptionalInputValue<AutoHealActionType, String>(actionType, (value) => value.wireValue),
      'customAction': ?pulumi.Input.mapOptionalInputValue<AutoHealCustomAction, Map<String, dynamic>>(customAction, (value) => value.toMap()),
      'minProcessExecutionTime': ?minProcessExecutionTime,
    };
  }

  factory AutoHealActions.fromMap(Map<String, dynamic> map) {
    return AutoHealActions(
      actionType: (() { final guardedValue = map['actionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoHealActionType.fromValue(guardedValue as String)); })(),
      customAction: (() { final guardedValue = map['customAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoHealCustomAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minProcessExecutionTime: (() { final guardedValue = map['minProcessExecutionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

