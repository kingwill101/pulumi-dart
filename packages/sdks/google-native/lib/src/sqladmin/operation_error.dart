// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database instance operation error.
class OperationError {
  /// Identifies the specific error that occurred.
  final pulumi.Input<String>? code;
  /// This is always `sql#operationError`.
  final pulumi.Input<String>? kind;
  /// Additional information about the error encountered.
  final pulumi.Input<String>? message;

  /// Creates a new [OperationError].
  /// [code] Identifies the specific error that occurred.
  /// [kind] This is always `sql#operationError`.
  /// [message] Additional information about the error encountered.
  OperationError({
    this.code,
    this.kind,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'kind': ?kind,
      'message': ?message,
    };
  }

  factory OperationError.fromMap(Map<String, dynamic> map) {
    return OperationError(
      code: map['code'] == null ? null : (map['code'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

