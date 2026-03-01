// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionStateRuleResponse {
  /// The allowed actions.
  final List<String>? allowedActions;
  /// The subscription state.
  final String? state;

  /// Creates a new [SubscriptionStateRuleResponse].
  /// [allowedActions] The allowed actions.
  /// [state] The subscription state.
  SubscriptionStateRuleResponse({
    this.allowedActions,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedActions': ?allowedActions,
      'state': ?state,
    };
  }

  factory SubscriptionStateRuleResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionStateRuleResponse(
      allowedActions: map['allowedActions'] == null ? null : (map['allowedActions'] as List).cast<String>(),
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

