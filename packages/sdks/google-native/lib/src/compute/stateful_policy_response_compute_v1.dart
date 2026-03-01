// ignore_for_file: unused_element, unnecessary_cast

import 'stateful_policy_preserved_state_response_compute_v1.dart';

class StatefulPolicyResponseComputeV1 {
  final StatefulPolicyPreservedStateResponseComputeV1 preservedState;

  /// Creates a new [StatefulPolicyResponseComputeV1].
  /// [preservedState] Required.
  StatefulPolicyResponseComputeV1({
    required this.preservedState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preservedState': preservedState.toMap(),
    };
  }

  factory StatefulPolicyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyResponseComputeV1(
      preservedState: StatefulPolicyPreservedStateResponseComputeV1.fromMap((map['preservedState'] as Map).cast<String, dynamic>()),
    );
  }
}

