// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error definition.
class ErrorDefinitionResponse {
  /// Service specific error code which serves as the substatus for the HTTP error code.
  final String code;
  /// Internal error details.
  final List<ErrorDefinitionResponse> details;
  /// Description of the error.
  final String message;
  /// Description of the recommendation.
  final String recommendation;

  /// Creates a new [ErrorDefinitionResponse].
  /// [code] Service specific error code which serves as the substatus for the HTTP error code.
  /// [details] Internal error details.
  /// [message] Description of the error.
  /// [recommendation] Description of the recommendation.
  ErrorDefinitionResponse({
    required this.code,
    required this.details,
    required this.message,
    required this.recommendation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': pulumi.Input.encodeList<ErrorDefinitionResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'message': message,
      'recommendation': recommendation,
    };
  }

  factory ErrorDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDefinitionResponse(
      code: map['code'] as String,
      details: pulumi.Input.decodeList<ErrorDefinitionResponse>(map['details'], (value) => ErrorDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
      recommendation: map['recommendation'] as String,
    );
  }
}

