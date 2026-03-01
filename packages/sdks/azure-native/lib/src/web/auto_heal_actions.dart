// ignore_for_file: unused_element, unnecessary_cast

import 'auto_heal_action_type.dart';
import 'auto_heal_custom_action.dart';

/// Actions which to take by the auto-heal module when a rule is triggered.
class AutoHealActions {
  /// Predefined action to be taken.
  final AutoHealActionType? actionType;
  /// Custom action to be taken.
  final AutoHealCustomAction? customAction;
  /// Minimum time the process must execute
  /// before taking the action
  final String? minProcessExecutionTime;

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
      'actionType': ?actionType == null ? null : actionType!.value,
      'customAction': ?customAction == null ? null : customAction!.toMap(),
      'minProcessExecutionTime': ?minProcessExecutionTime,
    };
  }

  factory AutoHealActions.fromMap(Map<String, dynamic> map) {
    return AutoHealActions(
      actionType: map['actionType'] == null ? null : AutoHealActionType.fromValue(map['actionType'] as String),
      customAction: map['customAction'] == null ? null : AutoHealCustomAction.fromMap((map['customAction'] as Map).cast<String, dynamic>()),
      minProcessExecutionTime: map['minProcessExecutionTime'] == null ? null : map['minProcessExecutionTime'] as String,
    );
  }
}

