// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queued_resource_status_failed_data_response.dart';
import 'queuing_policy_response.dart';

/// [Output only] Result of queuing and provisioning based on deferred capacity.
class QueuedResourceStatusResponse {
  /// Additional status detail for the FAILED state.
  final pulumi.Input<QueuedResourceStatusFailedDataResponse> failedData;
  /// [Output only] Fully qualified URL of the provisioning GCE operation to track the provisioning along with provisioning errors. The referenced operation may not exist after having been deleted or expired.
  final pulumi.Input<List<String>> provisioningOperations;
  /// Constraints for the time when the resource(s) start provisioning. Always exposed as absolute times.
  final pulumi.Input<QueuingPolicyResponse> queuingPolicy;

  /// Creates a new [QueuedResourceStatusResponse].
  /// [failedData] Additional status detail for the FAILED state.
  /// [provisioningOperations] [Output only] Fully qualified URL of the provisioning GCE operation to track the provisioning along with provisioning errors. The referenced operation may not exist after having been deleted or expired.
  /// [queuingPolicy] Constraints for the time when the resource(s) start provisioning. Always exposed as absolute times.
  const QueuedResourceStatusResponse({
    required this.failedData,
    required this.provisioningOperations,
    required this.queuingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedData': pulumi.Input.mapInputValue<QueuedResourceStatusFailedDataResponse, Map<String, dynamic>>(failedData, (value) => value.toMap()),
      'provisioningOperations': provisioningOperations,
      'queuingPolicy': pulumi.Input.mapInputValue<QueuingPolicyResponse, Map<String, dynamic>>(queuingPolicy, (value) => value.toMap()),
    };
  }

  factory QueuedResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return QueuedResourceStatusResponse(
      failedData: pulumi.Input.fromValue(QueuedResourceStatusFailedDataResponse.fromMap((map['failedData']! as Map).cast<String, dynamic>())),
      provisioningOperations: pulumi.Input.fromValue((map['provisioningOperations'] as List).cast<String>()),
      queuingPolicy: pulumi.Input.fromValue(QueuingPolicyResponse.fromMap((map['queuingPolicy']! as Map).cast<String, dynamic>())),
    );
  }
}
