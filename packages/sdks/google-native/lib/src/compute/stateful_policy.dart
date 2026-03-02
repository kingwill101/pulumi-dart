// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_policy_preserved_state.dart';

class StatefulPolicy {
  final pulumi.Input<StatefulPolicyPreservedState>? preservedState;

  /// Creates a new [StatefulPolicy].
  /// [preservedState] Optional.
  StatefulPolicy({
    this.preservedState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preservedState': ?pulumi.Input.mapOptionalInputValue<StatefulPolicyPreservedState, Map<String, dynamic>>(preservedState, (value) => value.toMap()),
    };
  }

  factory StatefulPolicy.fromMap(Map<String, dynamic> map) {
    return StatefulPolicy(
      preservedState: map['preservedState'] == null ? null : (StatefulPolicyPreservedState.fromMap((map['preservedState']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

