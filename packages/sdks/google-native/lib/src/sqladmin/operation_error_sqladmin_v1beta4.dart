// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database instance operation error.
class OperationErrorSqladminV1beta4 {
  /// Identifies the specific error that occurred.
  final pulumi.Input<String>? code;
  /// This is always `sql#operationError`.
  final pulumi.Input<String>? kind;
  /// Additional information about the error encountered.
  final pulumi.Input<String>? message;

  /// Creates a new [OperationErrorSqladminV1beta4].
  /// [code] Identifies the specific error that occurred.
  /// [kind] This is always `sql#operationError`.
  /// [message] Additional information about the error encountered.
  const OperationErrorSqladminV1beta4({
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

  factory OperationErrorSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return OperationErrorSqladminV1beta4(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

