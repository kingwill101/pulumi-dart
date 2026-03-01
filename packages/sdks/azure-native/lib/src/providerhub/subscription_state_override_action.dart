// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionStateOverrideAction {
  /// The action.
  final String action;
  /// The state.
  final String state;

  /// Creates a new [SubscriptionStateOverrideAction].
  /// [action] The action.
  /// [state] The state.
  SubscriptionStateOverrideAction({
    required this.action,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'state': state,
    };
  }

  factory SubscriptionStateOverrideAction.fromMap(Map<String, dynamic> map) {
    return SubscriptionStateOverrideAction(
      action: map['action'] as String,
      state: map['state'] as String,
    );
  }
}

