// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionStateRule {
  /// The allowed actions.
  final List<String>? allowedActions;
  /// The subscription state.
  final String? state;

  /// Creates a new [SubscriptionStateRule].
  /// [allowedActions] The allowed actions.
  /// [state] The subscription state.
  SubscriptionStateRule({
    this.allowedActions,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedActions': ?allowedActions,
      'state': ?state,
    };
  }

  factory SubscriptionStateRule.fromMap(Map<String, dynamic> map) {
    return SubscriptionStateRule(
      allowedActions: map['allowedActions'] == null ? null : (map['allowedActions'] as List).cast<String>(),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

