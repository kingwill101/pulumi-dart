// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ErrorProtoResponse {
  /// Debugging information. This property is internal to Google and should not be used.
  final pulumi.Input<String> debugInfo;
  /// Specifies where the error occurred, if present.
  final pulumi.Input<String> location;
  /// A human-readable description of the error.
  final pulumi.Input<String> message;
  /// A short error code that summarizes the error.
  final pulumi.Input<String> reason;

  /// Creates a new [ErrorProtoResponse].
  /// [debugInfo] Debugging information. This property is internal to Google and should not be used.
  /// [location] Specifies where the error occurred, if present.
  /// [message] A human-readable description of the error.
  /// [reason] A short error code that summarizes the error.
  const ErrorProtoResponse({
    required this.debugInfo,
    required this.location,
    required this.message,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugInfo': debugInfo,
      'location': location,
      'message': message,
      'reason': reason,
    };
  }

  factory ErrorProtoResponse.fromMap(Map<String, dynamic> map) {
    return ErrorProtoResponse(
      debugInfo: pulumi.Input.fromValue(map['debugInfo'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
    );
  }
}

