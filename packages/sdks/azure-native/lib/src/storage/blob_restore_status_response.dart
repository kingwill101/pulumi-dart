// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_restore_parameters_response.dart';

/// Blob restore status.
class BlobRestoreStatusResponse {
  /// Failure reason when blob restore is failed.
  final pulumi.Input<String> failureReason;
  /// Blob restore request parameters.
  final pulumi.Input<BlobRestoreParametersResponse> parameters;
  /// Id for tracking blob restore request.
  final pulumi.Input<String> restoreId;
  /// The status of blob restore progress. Possible values are: - InProgress: Indicates that blob restore is ongoing. - Complete: Indicates that blob restore has been completed successfully. - Failed: Indicates that blob restore is failed.
  final pulumi.Input<String> status;

  /// Creates a new [BlobRestoreStatusResponse].
  /// [failureReason] Failure reason when blob restore is failed.
  /// [parameters] Blob restore request parameters.
  /// [restoreId] Id for tracking blob restore request.
  /// [status] The status of blob restore progress. Possible values are: - InProgress: Indicates that blob restore is ongoing. - Complete: Indicates that blob restore has been completed successfully. - Failed: Indicates that blob restore is failed.
  BlobRestoreStatusResponse({
    required this.failureReason,
    required this.parameters,
    required this.restoreId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureReason': failureReason,
      'parameters': pulumi.Input.mapInputValue<BlobRestoreParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'restoreId': restoreId,
      'status': status,
    };
  }

  factory BlobRestoreStatusResponse.fromMap(Map<String, dynamic> map) {
    return BlobRestoreStatusResponse(
      failureReason: pulumi.Input.fromValue(map['failureReason'] as String),
      parameters: pulumi.Input.fromValue(BlobRestoreParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
      restoreId: pulumi.Input.fromValue(map['restoreId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

