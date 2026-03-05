// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_resize_request_status_error_response_compute_beta.dart';

class InstanceGroupManagerResizeRequestStatusResponseComputeBeta {
  /// Errors encountered during the queueing or provisioning phases of the ResizeRequest.
  final pulumi.Input<InstanceGroupManagerResizeRequestStatusErrorResponseComputeBeta> error;

  /// Creates a new [InstanceGroupManagerResizeRequestStatusResponseComputeBeta].
  /// [error] Errors encountered during the queueing or provisioning phases of the ResizeRequest.
  InstanceGroupManagerResizeRequestStatusResponseComputeBeta({
    required this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<InstanceGroupManagerResizeRequestStatusErrorResponseComputeBeta, Map<String, dynamic>>(error, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerResizeRequestStatusResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusResponseComputeBeta(
      error: pulumi.Input.fromValue(InstanceGroupManagerResizeRequestStatusErrorResponseComputeBeta.fromMap((map['error']! as Map).cast<String, dynamic>())),
    );
  }
}

