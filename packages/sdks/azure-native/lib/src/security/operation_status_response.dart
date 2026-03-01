// ignore_for_file: unused_element, unnecessary_cast


/// A status describing the success/failure of the extension's enablement/disablement operation.
class OperationStatusResponse {
  /// The operation status code.
  final String? code;
  /// Additional information regarding the success/failure of the operation.
  final String? message;

  /// Creates a new [OperationStatusResponse].
  /// [code] The operation status code.
  /// [message] Additional information regarding the success/failure of the operation.
  OperationStatusResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory OperationStatusResponse.fromMap(Map<String, dynamic> map) {
    return OperationStatusResponse(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

