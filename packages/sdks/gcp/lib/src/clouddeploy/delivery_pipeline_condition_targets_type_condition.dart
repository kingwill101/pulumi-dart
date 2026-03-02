// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeliveryPipelineConditionTargetsTypeCondition {
  /// Human readable error message.
  final pulumi.Input<String>? errorDetails;
  /// True if the targets are all a comparable type. For example this is true if all targets are GKE clusters. This is false if some targets are Cloud Run targets and others are GKE clusters.
  final pulumi.Input<bool>? status;

  /// Creates a new [DeliveryPipelineConditionTargetsTypeCondition].
  /// [errorDetails] Human readable error message.
  /// [status] True if the targets are all a comparable type. For example this is true if all targets are GKE clusters. This is false if some targets are Cloud Run targets and others are GKE clusters.
  DeliveryPipelineConditionTargetsTypeCondition({
    this.errorDetails,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': ?errorDetails,
      'status': ?status,
    };
  }

  factory DeliveryPipelineConditionTargetsTypeCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineConditionTargetsTypeCondition(
      errorDetails: map['errorDetails'] == null ? null : (map['errorDetails']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as bool).input(),
    );
  }
}

