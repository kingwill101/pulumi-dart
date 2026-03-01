// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state_compute_v1.dart';

class StatefulPolicyComputeV1 {
  final StatefulPolicyPreservedStateComputeV1? preservedState;

  /// Creates a new [StatefulPolicyComputeV1].
  /// [preservedState] Optional.
  StatefulPolicyComputeV1({
    this.preservedState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preservedState': ?preservedState == null ? null : preservedState!.toMap(),
    };
  }

  factory StatefulPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyComputeV1(
      preservedState: map['preservedState'] == null ? null : StatefulPolicyPreservedStateComputeV1.fromMap((map['preservedState'] as Map).cast<String, dynamic>()),
    );
  }
}

