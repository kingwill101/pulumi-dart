// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedNotificationRule {
  /// The actions.
  final pulumi.Input<List<String>>? actions;
  /// The actions on failed operation.
  final pulumi.Input<List<String>>? actionsOnFailedOperation;
  /// The fast path actions.
  final pulumi.Input<List<String>>? fastPathActions;
  /// The fast path action on failed operation.
  final pulumi.Input<List<String>>? fastPathActionsOnFailedOperation;
  /// This is a TimeSpan property.
  final pulumi.Input<String>? linkedNotificationTimeout;

  /// Creates a new [LinkedNotificationRule].
  /// [actions] The actions.
  /// [actionsOnFailedOperation] The actions on failed operation.
  /// [fastPathActions] The fast path actions.
  /// [fastPathActionsOnFailedOperation] The fast path action on failed operation.
  /// [linkedNotificationTimeout] This is a TimeSpan property.
  LinkedNotificationRule({
    this.actions,
    this.actionsOnFailedOperation,
    this.fastPathActions,
    this.fastPathActionsOnFailedOperation,
    this.linkedNotificationTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'actionsOnFailedOperation': ?actionsOnFailedOperation,
      'fastPathActions': ?fastPathActions,
      'fastPathActionsOnFailedOperation': ?fastPathActionsOnFailedOperation,
      'linkedNotificationTimeout': ?linkedNotificationTimeout,
    };
  }

  factory LinkedNotificationRule.fromMap(Map<String, dynamic> map) {
    return LinkedNotificationRule(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      actionsOnFailedOperation: (() { final guardedValue = map['actionsOnFailedOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fastPathActions: (() { final guardedValue = map['fastPathActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fastPathActionsOnFailedOperation: (() { final guardedValue = map['fastPathActionsOnFailedOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      linkedNotificationTimeout: (() { final guardedValue = map['linkedNotificationTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

