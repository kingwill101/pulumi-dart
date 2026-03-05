// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_resize_request_status_error_errors_item_response.dart';

/// Errors encountered during the queueing or provisioning phases of the ResizeRequest.
class InstanceGroupManagerResizeRequestStatusErrorResponse {
  /// The array of errors encountered while processing this operation.
  final pulumi.Input<List<InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse>> errors;

  /// Creates a new [InstanceGroupManagerResizeRequestStatusErrorResponse].
  /// [errors] The array of errors encountered while processing this operation.
  InstanceGroupManagerResizeRequestStatusErrorResponse({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': pulumi.Input.mapInputValue<List<InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceGroupManagerResizeRequestStatusErrorResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusErrorResponse(
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse>(map['errors']!, (value) => InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

