// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error definition.
class ConnectorErrorDefinitionResponse {
  /// Service specific error code which serves as the substatus for the HTTP error code.
  final pulumi.Input<String> code;
  /// Internal error details.
  final pulumi.Input<List<ConnectorErrorDefinitionResponse>> details;
  /// Description of the error.
  final pulumi.Input<String> message;

  /// Creates a new [ConnectorErrorDefinitionResponse].
  /// [code] Service specific error code which serves as the substatus for the HTTP error code.
  /// [details] Internal error details.
  /// [message] Description of the error.
  const ConnectorErrorDefinitionResponse({
    required this.code,
    required this.details,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': pulumi.Input.mapInputValue<List<ConnectorErrorDefinitionResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<ConnectorErrorDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
    };
  }

  factory ConnectorErrorDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorErrorDefinitionResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      details: pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectorErrorDefinitionResponse>(map['details']!, (value) => ConnectorErrorDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
