// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response.dart';

/// Further data for the failed state.
class FailedDataResponse {
  /// The error that caused the queued resource to enter the FAILED state.
  final pulumi.Input<StatusResponse> error;

  /// Creates a new [FailedDataResponse].
  /// [error] The error that caused the queued resource to enter the FAILED state.
  const FailedDataResponse({
    required this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
    };
  }

  factory FailedDataResponse.fromMap(Map<String, dynamic> map) {
    return FailedDataResponse(
      error: pulumi.Input.fromValue(StatusResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
    );
  }
}

