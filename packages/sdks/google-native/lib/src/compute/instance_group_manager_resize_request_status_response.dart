// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_resize_request_status_error_response.dart';
import 'queuing_policy_response.dart';

class InstanceGroupManagerResizeRequestStatusResponse {
  /// Errors encountered during the queueing or provisioning phases of the ResizeRequest.
  final pulumi.Input<InstanceGroupManagerResizeRequestStatusErrorResponse> error;
  /// Constraints for the time when the instances start provisioning. Always exposed as absolute time.
  final pulumi.Input<QueuingPolicyResponse> queuingPolicy;

  /// Creates a new [InstanceGroupManagerResizeRequestStatusResponse].
  /// [error] Errors encountered during the queueing or provisioning phases of the ResizeRequest.
  /// [queuingPolicy] Constraints for the time when the instances start provisioning. Always exposed as absolute time.
  const InstanceGroupManagerResizeRequestStatusResponse({
    required this.error,
    required this.queuingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<InstanceGroupManagerResizeRequestStatusErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'queuingPolicy': pulumi.Input.mapInputValue<QueuingPolicyResponse, Map<String, dynamic>>(queuingPolicy, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerResizeRequestStatusResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerResizeRequestStatusResponse(
      error: pulumi.Input.fromValue(InstanceGroupManagerResizeRequestStatusErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      queuingPolicy: pulumi.Input.fromValue(QueuingPolicyResponse.fromMap((map['queuingPolicy']! as Map).cast<String, dynamic>())),
    );
  }
}

