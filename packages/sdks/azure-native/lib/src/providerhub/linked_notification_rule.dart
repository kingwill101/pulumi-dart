// ignore_for_file: unused_element, unnecessary_cast


class LinkedNotificationRule {
  /// The actions.
  final List<String>? actions;
  /// The actions on failed operation.
  final List<String>? actionsOnFailedOperation;
  /// The fast path actions.
  final List<String>? fastPathActions;
  /// The fast path action on failed operation.
  final List<String>? fastPathActionsOnFailedOperation;
  /// This is a TimeSpan property.
  final String? linkedNotificationTimeout;

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
      actions: map['actions'] == null ? null : (map['actions'] as List).cast<String>(),
      actionsOnFailedOperation: map['actionsOnFailedOperation'] == null ? null : (map['actionsOnFailedOperation'] as List).cast<String>(),
      fastPathActions: map['fastPathActions'] == null ? null : (map['fastPathActions'] as List).cast<String>(),
      fastPathActionsOnFailedOperation: map['fastPathActionsOnFailedOperation'] == null ? null : (map['fastPathActionsOnFailedOperation'] as List).cast<String>(),
      linkedNotificationTimeout: map['linkedNotificationTimeout'] == null ? null : map['linkedNotificationTimeout'] as String,
    );
  }
}

