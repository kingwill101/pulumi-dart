// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedNotificationRuleResponse {
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

  /// Creates a new [LinkedNotificationRuleResponse].
  /// [actions] The actions.
  /// [actionsOnFailedOperation] The actions on failed operation.
  /// [fastPathActions] The fast path actions.
  /// [fastPathActionsOnFailedOperation] The fast path action on failed operation.
  /// [linkedNotificationTimeout] This is a TimeSpan property.
  LinkedNotificationRuleResponse({
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

  factory LinkedNotificationRuleResponse.fromMap(Map<String, dynamic> map) {
    return LinkedNotificationRuleResponse(
      actions: map['actions'] == null ? null : ((map['actions']! as List).cast<String>()).input(),
      actionsOnFailedOperation: map['actionsOnFailedOperation'] == null ? null : ((map['actionsOnFailedOperation']! as List).cast<String>()).input(),
      fastPathActions: map['fastPathActions'] == null ? null : ((map['fastPathActions']! as List).cast<String>()).input(),
      fastPathActionsOnFailedOperation: map['fastPathActionsOnFailedOperation'] == null ? null : ((map['fastPathActionsOnFailedOperation']! as List).cast<String>()).input(),
      linkedNotificationTimeout: map['linkedNotificationTimeout'] == null ? null : (map['linkedNotificationTimeout']! as String).input(),
    );
  }
}

