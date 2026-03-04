// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'typed_error_info_response.dart';

/// Error definition.
class ErrorDefinitionResponse {
  /// Additional scenario specific error details.
  final pulumi.Input<List<TypedErrorInfoResponse>> additionalInfo;

  /// Service specific error code which serves as the substatus for the HTTP error code.
  final pulumi.Input<String> code;

  /// Internal error details.
  final pulumi.Input<List<ErrorDefinitionResponse>> details;

  /// Description of the error.
  final pulumi.Input<String> message;

  /// The target of the error.
  final pulumi.Input<String> target;

  /// Creates a new [ErrorDefinitionResponse].
  /// [additionalInfo] Additional scenario specific error details.
  /// [code] Service specific error code which serves as the substatus for the HTTP error code.
  /// [details] Internal error details.
  /// [message] Description of the error.
  /// [target] The target of the error.
  ErrorDefinitionResponse({
    required this.additionalInfo,
    required this.code,
    required this.details,
    required this.message,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo':
          pulumi.Input.mapInputValue<
            List<TypedErrorInfoResponse>,
            List<Map<String, dynamic>>
          >(
            additionalInfo,
            (value) =>
                pulumi.Input.encodeList<
                  TypedErrorInfoResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'code': code,
      'details':
          pulumi.Input.mapInputValue<
            List<ErrorDefinitionResponse>,
            List<Map<String, dynamic>>
          >(
            details,
            (value) =>
                pulumi.Input.encodeList<
                  ErrorDefinitionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'message': message,
      'target': target,
    };
  }

  factory ErrorDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDefinitionResponse(
      additionalInfo: pulumi.Input.fromValue(
        pulumi.Input.decodeList<TypedErrorInfoResponse>(
          map['additionalInfo']!,
          (value) => TypedErrorInfoResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      code: pulumi.Input.fromValue(map['code'] as String),
      details: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ErrorDefinitionResponse>(
          map['details']!,
          (value) => ErrorDefinitionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      message: pulumi.Input.fromValue(map['message'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
