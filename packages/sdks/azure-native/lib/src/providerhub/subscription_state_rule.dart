// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionStateRule {
  /// The allowed actions.
  final pulumi.Input<List<String>?>? allowedActions;
  /// The subscription state.
  final pulumi.Input<dynamic>? state;

  /// Creates a new [SubscriptionStateRule].
  /// [allowedActions] The allowed actions.
  /// [state] The subscription state.
  const SubscriptionStateRule({
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
      allowedActions: (() { final guardedValue = map['allowedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
