// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queued_resource_status_failed_data_error_response.dart';

/// Additional status detail for the FAILED state.
class QueuedResourceStatusFailedDataResponse {
  /// The error(s) that caused the QueuedResource to enter the FAILED state.
  final pulumi.Input<QueuedResourceStatusFailedDataErrorResponse> error;

  /// Creates a new [QueuedResourceStatusFailedDataResponse].
  /// [error] The error(s) that caused the QueuedResource to enter the FAILED state.
  const QueuedResourceStatusFailedDataResponse({
    required this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<QueuedResourceStatusFailedDataErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
    };
  }

  factory QueuedResourceStatusFailedDataResponse.fromMap(Map<String, dynamic> map) {
    return QueuedResourceStatusFailedDataResponse(
      error: pulumi.Input.fromValue(QueuedResourceStatusFailedDataErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
    );
  }
}

