// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_policy_preserved_state_response_compute_beta.dart';

class StatefulPolicyResponseComputeBeta {
  final pulumi.Input<StatefulPolicyPreservedStateResponseComputeBeta> preservedState;

  /// Creates a new [StatefulPolicyResponseComputeBeta].
  /// [preservedState] Required.
  const StatefulPolicyResponseComputeBeta({
    required this.preservedState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preservedState': pulumi.Input.mapInputValue<StatefulPolicyPreservedStateResponseComputeBeta, Map<String, dynamic>>(preservedState, (value) => value.toMap()),
    };
  }

  factory StatefulPolicyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyResponseComputeBeta(
      preservedState: pulumi.Input.fromValue(StatefulPolicyPreservedStateResponseComputeBeta.fromMap((map['preservedState']! as Map).cast<String, dynamic>())),
    );
  }
}

