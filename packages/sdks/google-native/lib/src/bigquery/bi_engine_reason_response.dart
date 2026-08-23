// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BiEngineReasonResponse {
  /// High-level BI Engine reason for partial or disabled acceleration.
  final pulumi.Input<String> code;
  /// Free form human-readable reason for partial or disabled acceleration.
  final pulumi.Input<String> message;

  /// Creates a new [BiEngineReasonResponse].
  /// [code] High-level BI Engine reason for partial or disabled acceleration.
  /// [message] Free form human-readable reason for partial or disabled acceleration.
  const BiEngineReasonResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory BiEngineReasonResponse.fromMap(Map<String, dynamic> map) {
    return BiEngineReasonResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
