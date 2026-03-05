// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Condition applicable to the resource, or to the job overall, that warrant customer attention.
class DiagnosticConditionResponse {
  /// The opaque diagnostic code.
  final pulumi.Input<String> code;
  /// The human-readable message describing the condition in detail. Localized in the Accept-Language of the client request.
  final pulumi.Input<String> message;
  /// The UTC timestamp of when the condition started. Customers should be able to find a corresponding event in the ops log around this time.
  final pulumi.Input<String> since;

  /// Creates a new [DiagnosticConditionResponse].
  /// [code] The opaque diagnostic code.
  /// [message] The human-readable message describing the condition in detail. Localized in the Accept-Language of the client request.
  /// [since] The UTC timestamp of when the condition started. Customers should be able to find a corresponding event in the ops log around this time.
  DiagnosticConditionResponse({
    required this.code,
    required this.message,
    required this.since,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'since': since,
    };
  }

  factory DiagnosticConditionResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticConditionResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      since: pulumi.Input.fromValue(map['since'] as String),
    );
  }
}

