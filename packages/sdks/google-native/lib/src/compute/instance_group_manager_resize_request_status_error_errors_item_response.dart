// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_resize_request_status_error_errors_item_error_details_item_response.dart';

class InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse {
  /// The error type identifier for this error.
  final String code;
  /// An optional list of messages that contain the error details. There is a set of defined message types to use for providing details.The syntax depends on the error code. For example, QuotaExceededInfo will have details when the error code is QUOTA_EXCEEDED.
  final List<InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse> errorDetails;
  /// Indicates the field in the request that caused the error. This property is optional.
  final String location;
  /// An optional, human-readable error message.
  final String message;

  /// Creates a new [InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse].
  /// [code] The error type identifier for this error.
  /// [errorDetails] An optional list of messages that contain the error details. There is a set of defined message types to use for providing details.The syntax depends on the error code. For example, QuotaExceededInfo will have details when the error code is QUOTA_EXCEEDED.
  /// [location] Indicates the field in the request that caused the error. This property is optional.
  /// [message] An optional, human-readable error message.
  InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse({
    required this.code,
    required this.errorDetails,
    required this.location,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'errorDetails': pulumi.Input.encodeList<InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'location': location,
      'message': message,
    };
  }

  factory InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse(
      code: map['code'] as String,
      errorDetails: pulumi.Input.decodeList<InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse>(map['errorDetails'], (value) => InstanceGroupManagerResizeRequestStatusErrorErrorsItemErrorDetailsItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      message: map['message'] as String,
    );
  }
}

