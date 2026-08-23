// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_policy_preserved_state_response_compute_v1.dart';

class StatefulPolicyResponseComputeV1 {
  final pulumi.Input<StatefulPolicyPreservedStateResponseComputeV1> preservedState;

  /// Creates a new [StatefulPolicyResponseComputeV1].
  /// [preservedState] Required.
  const StatefulPolicyResponseComputeV1({
    required this.preservedState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preservedState': pulumi.Input.mapInputValue<StatefulPolicyPreservedStateResponseComputeV1, Map<String, dynamic>>(preservedState, (value) => value.toMap()),
    };
  }

  factory StatefulPolicyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyResponseComputeV1(
      preservedState: pulumi.Input.fromValue(StatefulPolicyPreservedStateResponseComputeV1.fromMap((map['preservedState']! as Map).cast<String, dynamic>())),
    );
  }
}
