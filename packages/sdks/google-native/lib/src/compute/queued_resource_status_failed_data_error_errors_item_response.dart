// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queued_resource_status_failed_data_error_errors_item_error_details_item_response.dart';

class QueuedResourceStatusFailedDataErrorErrorsItemResponse {
  /// The error type identifier for this error.
  final pulumi.Input<String> code;

  /// An optional list of messages that contain the error details. There is a set of defined message types to use for providing details.The syntax depends on the error code. For example, QuotaExceededInfo will have details when the error code is QUOTA_EXCEEDED.
  final pulumi.Input<
    List<QueuedResourceStatusFailedDataErrorErrorsItemErrorDetailsItemResponse>
  >
  errorDetails;

  /// Indicates the field in the request that caused the error. This property is optional.
  final pulumi.Input<String> location;

  /// An optional, human-readable error message.
  final pulumi.Input<String> message;

  /// Creates a new [QueuedResourceStatusFailedDataErrorErrorsItemResponse].
  /// [code] The error type identifier for this error.
  /// [errorDetails] An optional list of messages that contain the error details. There is a set of defined message types to use for providing details.The syntax depends on the error code. For example, QuotaExceededInfo will have details when the error code is QUOTA_EXCEEDED.
  /// [location] Indicates the field in the request that caused the error. This property is optional.
  /// [message] An optional, human-readable error message.
  QueuedResourceStatusFailedDataErrorErrorsItemResponse({
    required this.code,
    required this.errorDetails,
    required this.location,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'errorDetails':
          pulumi.Input.mapInputValue<
            List<
              QueuedResourceStatusFailedDataErrorErrorsItemErrorDetailsItemResponse
            >,
            List<Map<String, dynamic>>
          >(
            errorDetails,
            (value) =>
                pulumi.Input.encodeList<
                  QueuedResourceStatusFailedDataErrorErrorsItemErrorDetailsItemResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'location': location,
      'message': message,
    };
  }

  factory QueuedResourceStatusFailedDataErrorErrorsItemResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return QueuedResourceStatusFailedDataErrorErrorsItemResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      errorDetails: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          QueuedResourceStatusFailedDataErrorErrorsItemErrorDetailsItemResponse
        >(
          map['errorDetails']!,
          (value) =>
              QueuedResourceStatusFailedDataErrorErrorsItemErrorDetailsItemResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
