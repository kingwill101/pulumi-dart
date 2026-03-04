// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionStateOverrideActionResponse {
  /// The action.
  final pulumi.Input<String> action;

  /// The state.
  final pulumi.Input<String> state;

  /// Creates a new [SubscriptionStateOverrideActionResponse].
  /// [action] The action.
  /// [state] The state.
  SubscriptionStateOverrideActionResponse({
    required this.action,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'action': action, 'state': state};
  }

  factory SubscriptionStateOverrideActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SubscriptionStateOverrideActionResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
