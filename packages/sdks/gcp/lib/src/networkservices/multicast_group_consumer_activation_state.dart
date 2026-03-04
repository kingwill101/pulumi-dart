// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MulticastGroupConsumerActivationState {
  /// (Output)
  /// The state of the multicast resource.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// UPDATING
  /// UPDATE_FAILED
  /// INACTIVE
  final pulumi.Input<String>? state;

  /// Creates a new [MulticastGroupConsumerActivationState].
  /// [state] (Output)
  MulticastGroupConsumerActivationState({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory MulticastGroupConsumerActivationState.fromMap(
    Map<String, dynamic> map,
  ) {
    return MulticastGroupConsumerActivationState(
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
