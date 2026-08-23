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
  const AgentPropertiesErrorDetailsResponse({
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
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
