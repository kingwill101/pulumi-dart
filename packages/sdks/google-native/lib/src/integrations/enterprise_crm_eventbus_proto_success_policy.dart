// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_success_policy_final_state.dart';

/// Policy that dictates the behavior for the task after it completes successfully.
class EnterpriseCrmEventbusProtoSuccessPolicy {
  /// State to which the execution snapshot status will be set if the task succeeds.
  final pulumi.Input<EnterpriseCrmEventbusProtoSuccessPolicyFinalState>? finalState;

  /// Creates a new [EnterpriseCrmEventbusProtoSuccessPolicy].
  /// [finalState] State to which the execution snapshot status will be set if the task succeeds.
  const EnterpriseCrmEventbusProtoSuccessPolicy({
    this.finalState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finalState': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoSuccessPolicyFinalState, String>(finalState, (value) => value.wireValue),
    };
  }

  factory EnterpriseCrmEventbusProtoSuccessPolicy.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoSuccessPolicy(
      finalState: (() { final guardedValue = map['finalState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoSuccessPolicyFinalState.fromValue(guardedValue as String)); })(),
    );
  }
}
