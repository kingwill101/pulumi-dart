// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy that dictates the behavior for the task after it completes successfully.
class EnterpriseCrmEventbusProtoSuccessPolicyResponse {
  /// State to which the execution snapshot status will be set if the task succeeds.
  final pulumi.Input<String> finalState;

  /// Creates a new [EnterpriseCrmEventbusProtoSuccessPolicyResponse].
  /// [finalState] State to which the execution snapshot status will be set if the task succeeds.
  const EnterpriseCrmEventbusProtoSuccessPolicyResponse({
    required this.finalState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'finalState': finalState,
    };
  }

  factory EnterpriseCrmEventbusProtoSuccessPolicyResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoSuccessPolicyResponse(
      finalState: pulumi.Input.fromValue(map['finalState'] as String),
    );
  }
}
