// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database instance operation error.
class OperationErrorResponseSqladminV1beta4 {
  /// Identifies the specific error that occurred.
  final pulumi.Input<String> code;
  /// This is always `sql#operationError`.
  final pulumi.Input<String> kind;
  /// Additional information about the error encountered.
  final pulumi.Input<String> message;

  /// Creates a new [OperationErrorResponseSqladminV1beta4].
  /// [code] Identifies the specific error that occurred.
  /// [kind] This is always `sql#operationError`.
  /// [message] Additional information about the error encountered.
  const OperationErrorResponseSqladminV1beta4({
    required this.code,
    required this.kind,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'kind': kind,
      'message': message,
    };
  }

  factory OperationErrorResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return OperationErrorResponseSqladminV1beta4(
      code: pulumi.Input.fromValue(map['code'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
