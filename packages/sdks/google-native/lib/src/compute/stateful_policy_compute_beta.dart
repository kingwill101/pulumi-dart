// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_policy_preserved_state_compute_beta.dart';

class StatefulPolicyComputeBeta {
  final pulumi.Input<StatefulPolicyPreservedStateComputeBeta>? preservedState;

  /// Creates a new [StatefulPolicyComputeBeta].
  /// [preservedState] Optional.
  StatefulPolicyComputeBeta({
    this.preservedState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preservedState': ?pulumi.Input.mapOptionalInputValue<StatefulPolicyPreservedStateComputeBeta, Map<String, dynamic>>(preservedState, (value) => value.toMap()),
    };
  }

  factory StatefulPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyComputeBeta(
      preservedState: (() { final guardedValue = map['preservedState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulPolicyPreservedStateComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

