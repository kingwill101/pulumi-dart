// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_heal_custom_action_response.dart';

/// Actions which to take by the auto-heal module when a rule is triggered.
class AutoHealActionsResponse {
  /// Predefined action to be taken.
  final pulumi.Input<String>? actionType;
  /// Custom action to be taken.
  final pulumi.Input<AutoHealCustomActionResponse>? customAction;
  /// Minimum time the process must execute
  /// before taking the action
  final pulumi.Input<String>? minProcessExecutionTime;

  /// Creates a new [AutoHealActionsResponse].
  /// [actionType] Predefined action to be taken.
  /// [customAction] Custom action to be taken.
  /// [minProcessExecutionTime] Minimum time the process must execute
  AutoHealActionsResponse({
    this.actionType,
    this.customAction,
    this.minProcessExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?actionType,
      'customAction': ?pulumi.Input.mapOptionalInputValue<AutoHealCustomActionResponse, Map<String, dynamic>>(customAction, (value) => value.toMap()),
      'minProcessExecutionTime': ?minProcessExecutionTime,
    };
  }

  factory AutoHealActionsResponse.fromMap(Map<String, dynamic> map) {
    return AutoHealActionsResponse(
      actionType: (() { final guardedValue = map['actionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customAction: (() { final guardedValue = map['customAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoHealCustomActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minProcessExecutionTime: (() { final guardedValue = map['minProcessExecutionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

