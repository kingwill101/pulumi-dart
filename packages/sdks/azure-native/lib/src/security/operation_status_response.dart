// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A status describing the success/failure of the enablement/disablement operation.
class OperationStatusResponse {
  /// The operation status code.
  final pulumi.Input<String?>? code;
  /// Additional information regarding the success/failure of the operation.
  final pulumi.Input<String?>? message;

  /// Creates a new [OperationStatusResponse].
  /// [code] The operation status code.
  /// [message] Additional information regarding the success/failure of the operation.
  const OperationStatusResponse({
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
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
