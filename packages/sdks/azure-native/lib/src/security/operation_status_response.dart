// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A status describing the success/failure of the extension's enablement/disablement operation.
class OperationStatusResponse {
  /// The operation status code.
  final pulumi.Input<String>? code;
  /// Additional information regarding the success/failure of the operation.
  final pulumi.Input<String>? message;

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
      code: map['code'] == null ? null : (map['code'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

