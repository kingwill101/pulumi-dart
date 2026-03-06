// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Informational messages about the state of the Cloud Function or Operation.
class GoogleCloudFunctionsV2alphaStateMessageResponse {
  /// The message.
  final pulumi.Input<String> message;
  /// Severity of the state message.
  final pulumi.Input<String> severity;
  /// One-word CamelCase type of the state message.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudFunctionsV2alphaStateMessageResponse].
  /// [message] The message.
  /// [severity] Severity of the state message.
  /// [type] One-word CamelCase type of the state message.
  const GoogleCloudFunctionsV2alphaStateMessageResponse({
    required this.message,
    required this.severity,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'severity': severity,
      'type': type,
    };
  }

  factory GoogleCloudFunctionsV2alphaStateMessageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudFunctionsV2alphaStateMessageResponse(
      message: pulumi.Input.fromValue(map['message'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

