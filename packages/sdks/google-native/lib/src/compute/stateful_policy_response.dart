// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_policy_preserved_state_response.dart';

class StatefulPolicyResponse {
  final pulumi.Input<StatefulPolicyPreservedStateResponse> preservedState;

  /// Creates a new [StatefulPolicyResponse].
  /// [preservedState] Required.
  StatefulPolicyResponse({
    required this.preservedState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preservedState': pulumi.Input.mapInputValue<StatefulPolicyPreservedStateResponse, Map<String, dynamic>>(preservedState, (value) => value.toMap()),
    };
  }

  factory StatefulPolicyResponse.fromMap(Map<String, dynamic> map) {
    return StatefulPolicyResponse(
      preservedState: (StatefulPolicyPreservedStateResponse.fromMap((map['preservedState'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

