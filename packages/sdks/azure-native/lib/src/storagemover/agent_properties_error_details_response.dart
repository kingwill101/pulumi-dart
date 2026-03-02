// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentPropertiesErrorDetailsResponse {
  /// Error code reported by Agent
  final pulumi.Input<String>? code;
  /// Expanded description of reported error code
  final pulumi.Input<String>? message;

  /// Creates a new [AgentPropertiesErrorDetailsResponse].
  /// [code] Error code reported by Agent
  /// [message] Expanded description of reported error code
  AgentPropertiesErrorDetailsResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AgentPropertiesErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AgentPropertiesErrorDetailsResponse(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

