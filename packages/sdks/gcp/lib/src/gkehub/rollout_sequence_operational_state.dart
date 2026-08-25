// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RolloutSequenceOperationalState {
  /// (Output)
  /// The state of the rollout sequence.
  final pulumi.Input<String?>? state;

  /// Creates a new [RolloutSequenceOperationalState].
  /// [state] (Output)
  const RolloutSequenceOperationalState({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory RolloutSequenceOperationalState.fromMap(Map<String, dynamic> map) {
    return RolloutSequenceOperationalState(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
