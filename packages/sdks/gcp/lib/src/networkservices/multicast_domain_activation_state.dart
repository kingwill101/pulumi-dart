// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MulticastDomainActivationState {
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

  /// Creates a new [MulticastDomainActivationState].
  /// [state] (Output)
  MulticastDomainActivationState({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory MulticastDomainActivationState.fromMap(Map<String, dynamic> map) {
    return MulticastDomainActivationState(
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

