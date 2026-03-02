// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Informational messages about the state of the Cloud Function or Operation.
class GoogleCloudFunctionsV2betaStateMessageResponse {
  /// The message.
  final pulumi.Input<String> message;
  /// Severity of the state message.
  final pulumi.Input<String> severity;
  /// One-word CamelCase type of the state message.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudFunctionsV2betaStateMessageResponse].
  /// [message] The message.
  /// [severity] Severity of the state message.
  /// [type] One-word CamelCase type of the state message.
  GoogleCloudFunctionsV2betaStateMessageResponse({
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

  factory GoogleCloudFunctionsV2betaStateMessageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudFunctionsV2betaStateMessageResponse(
      message: (map['message'] as String).input(),
      severity: (map['severity'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

