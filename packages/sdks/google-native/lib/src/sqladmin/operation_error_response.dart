// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database instance operation error.
class OperationErrorResponse {
  /// Identifies the specific error that occurred.
  final pulumi.Input<String> code;
  /// This is always `sql#operationError`.
  final pulumi.Input<String> kind;
  /// Additional information about the error encountered.
  final pulumi.Input<String> message;

  /// Creates a new [OperationErrorResponse].
  /// [code] Identifies the specific error that occurred.
  /// [kind] This is always `sql#operationError`.
  /// [message] Additional information about the error encountered.
  OperationErrorResponse({
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

  factory OperationErrorResponse.fromMap(Map<String, dynamic> map) {
    return OperationErrorResponse(
      code: (map['code'] as String).input(),
      kind: (map['kind'] as String).input(),
      message: (map['message'] as String).input(),
    );
  }
}

