// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_definition_response.dart';

/// An error response from the SAP migrate resources.
class SAPMigrateErrorResponse {
  /// Service specific error code which serves as the substatus for the HTTP error code.
  final pulumi.Input<String> code;
  /// Internal error details.
  final pulumi.Input<List<ErrorDefinitionResponse>> details;
  /// Description of the error.
  final pulumi.Input<String> message;
  /// Description of the recommendation.
  final pulumi.Input<String> recommendation;

  /// Creates a new [SAPMigrateErrorResponse].
  /// [code] Service specific error code which serves as the substatus for the HTTP error code.
  /// [details] Internal error details.
  /// [message] Description of the error.
  /// [recommendation] Description of the recommendation.
  const SAPMigrateErrorResponse({
    required this.code,
    required this.details,
    required this.message,
    required this.recommendation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': pulumi.Input.mapInputValue<List<ErrorDefinitionResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<ErrorDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
      'recommendation': recommendation,
    };
  }

  factory SAPMigrateErrorResponse.fromMap(Map<String, dynamic> map) {
    return SAPMigrateErrorResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      details: pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorDefinitionResponse>(map['details']!, (value) => ErrorDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      message: pulumi.Input.fromValue(map['message'] as String),
      recommendation: pulumi.Input.fromValue(map['recommendation'] as String),
    );
  }
}

