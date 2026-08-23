// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_additional_info_response.dart';

/// Common error response for all Azure Resource Manager APIs to return error details for failed operations. (This also follows the OData error response format.)
class ErrorResponseResponse {
  /// The error additional info.
  final pulumi.Input<List<ErrorAdditionalInfoResponse>> additionalInfo;
  /// The error code.
  final pulumi.Input<String> code;
  /// The error details.
  final pulumi.Input<List<ErrorResponseResponse>> details;
  /// The error message.
  final pulumi.Input<String> message;
  /// The error target.
  final pulumi.Input<String> target;

  /// Creates a new [ErrorResponseResponse].
  /// [additionalInfo] The error additional info.
  /// [code] The error code.
  /// [details] The error details.
  /// [message] The error message.
  /// [target] The error target.
  const ErrorResponseResponse({
    required this.additionalInfo,
    required this.code,
    required this.details,
    required this.message,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': pulumi.Input.mapInputValue<List<ErrorAdditionalInfoResponse>, List<Map<String, dynamic>>>(additionalInfo, (value) => pulumi.Input.encodeList<ErrorAdditionalInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'code': code,
      'details': pulumi.Input.mapInputValue<List<ErrorResponseResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<ErrorResponseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
      'target': target,
    };
  }

  factory ErrorResponseResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponseResponse(
      additionalInfo: pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorAdditionalInfoResponse>(map['additionalInfo']!, (value) => ErrorAdditionalInfoResponse.fromMap((value as Map).cast<String, dynamic>()))),
      code: pulumi.Input.fromValue(map['code'] as String),
      details: pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorResponseResponse>(map['details']!, (value) => ErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>()))),
      message: pulumi.Input.fromValue(map['message'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
