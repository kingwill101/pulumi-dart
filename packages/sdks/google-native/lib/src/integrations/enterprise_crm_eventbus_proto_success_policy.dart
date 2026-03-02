// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_success_policy_final_state.dart';

/// Policy that dictates the behavior for the task after it completes successfully.
class EnterpriseCrmEventbusProtoSuccessPolicy {
  /// State to which the execution snapshot status will be set if the task succeeds.
  final pulumi.Input<EnterpriseCrmEventbusProtoSuccessPolicyFinalState>? finalState;

  /// Creates a new [EnterpriseCrmEventbusProtoSuccessPolicy].
  /// [finalState] State to which the execution snapshot status will be set if the task succeeds.
  EnterpriseCrmEventbusProtoSuccessPolicy({
    this.finalState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finalState': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoSuccessPolicyFinalState, String>(finalState, (value) => value.value),
    };
  }

  factory EnterpriseCrmEventbusProtoSuccessPolicy.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoSuccessPolicy(
      finalState: map['finalState'] == null ? null : (EnterpriseCrmEventbusProtoSuccessPolicyFinalState.fromValue(map['finalState']! as String)).input(),
    );
  }
}

