// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_policy_preserved_state_compute_v1.dart';

class StatefulPolicyComputeV1 {
  final pulumi.Input<StatefulPolicyPreservedStateComputeV1>? preservedState;

  /// Creates a new [StatefulPolicyComputeV1].
  /// [preservedState] Optional.
  StatefulPolicyComputeV1({this.preservedState});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preservedState':
          ?pulumi.Input.mapOptionalInputValue<
            StatefulPolicyPreservedStateComputeV1,
            Map<String, dynamic>
          >(preservedState, (value) => value.toMap()),
    };
  }

  factory StatefulPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyComputeV1(
      preservedState: (() {
        final guardedValue = map['preservedState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StatefulPolicyPreservedStateComputeV1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
