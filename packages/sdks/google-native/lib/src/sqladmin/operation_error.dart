// ignore_for_file: unused_element, unnecessary_cast


/// Database instance operation error.
class OperationError {
  /// Identifies the specific error that occurred.
  final String? code;
  /// This is always `sql#operationError`.
  final String? kind;
  /// Additional information about the error encountered.
  final String? message;

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
      code: map['code'] == null ? null : map['code'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

