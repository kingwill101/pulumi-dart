// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionStateRule {
  /// The allowed actions.
  final pulumi.Input<List<String>>? allowedActions;
  /// The subscription state.
  final pulumi.Input<String>? state;

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
      allowedActions: map['allowedActions'] == null ? null : ((map['allowedActions']! as List).cast<String>()).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

