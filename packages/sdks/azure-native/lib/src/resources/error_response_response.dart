// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_additional_info_response.dart';

/// Common error response for all Azure Resource Manager APIs to return error details for failed operations. (This also follows the OData error response format.)
class ErrorResponseResponse {
  /// The error additional info.
  final List<ErrorAdditionalInfoResponse> additionalInfo;
  /// The error code.
  final String code;
  /// The error details.
  final List<ErrorResponseResponse> details;
  /// The error message.
  final String message;
  /// The error target.
  final String target;

  /// Creates a new [ErrorResponseResponse].
  /// [additionalInfo] The error additional info.
  /// [code] The error code.
  /// [details] The error details.
  /// [message] The error message.
  /// [target] The error target.
  ErrorResponseResponse({
    required this.additionalInfo,
    required this.code,
    required this.details,
    required this.message,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': pulumi.Input.encodeList<ErrorAdditionalInfoResponse, Map<String, dynamic>>(additionalInfo, (value) => value.toMap()),
      'code': code,
      'details': pulumi.Input.encodeList<ErrorResponseResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'message': message,
      'target': target,
    };
  }

  factory ErrorResponseResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponseResponse(
      additionalInfo: pulumi.Input.decodeList<ErrorAdditionalInfoResponse>(map['additionalInfo'], (value) => ErrorAdditionalInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      code: map['code'] as String,
      details: pulumi.Input.decodeList<ErrorResponseResponse>(map['details'], (value) => ErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] as String,
      target: map['target'] as String,
    );
  }
}

