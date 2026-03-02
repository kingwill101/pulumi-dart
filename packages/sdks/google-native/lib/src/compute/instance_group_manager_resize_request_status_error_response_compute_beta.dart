// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_resize_request_status_error_errors_item_response_compute_beta.dart';

/// Errors encountered during the queueing or provisioning phases of the ResizeRequest.
class InstanceGroupManagerResizeRequestStatusErrorResponseComputeBeta {
  /// The array of errors encountered while processing this operation.
  final pulumi.Input<List<InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponseComputeBeta>> errors;

  /// Creates a new [InstanceGroupManagerResizeRequestStatusErrorResponseComputeBeta].
  /// [errors] The array of errors encountered while processing this operation.
  InstanceGroupManagerResizeRequestStatusErrorResponseComputeBeta({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': pulumi.Input.mapInputValue<List<InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponseComputeBeta>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceGroupManagerResizeRequestStatusErrorResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusErrorResponseComputeBeta(
      errors: (pulumi.Input.decodeList<InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponseComputeBeta>(map['errors'], (value) => InstanceGroupManagerResizeRequestStatusErrorErrorsItemResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

