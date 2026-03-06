// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TargetsTypeCondition contains information on whether the Targets defined in the Delivery Pipeline are of the same type.
class TargetsTypeConditionResponse {
  /// Human readable error message.
  final pulumi.Input<String> errorDetails;
  /// True if the targets are all a comparable type. For example this is true if all targets are GKE clusters. This is false if some targets are Cloud Run targets and others are GKE clusters.
  final pulumi.Input<bool> status;

  /// Creates a new [TargetsTypeConditionResponse].
  /// [errorDetails] Human readable error message.
  /// [status] True if the targets are all a comparable type. For example this is true if all targets are GKE clusters. This is false if some targets are Cloud Run targets and others are GKE clusters.
  const TargetsTypeConditionResponse({
    required this.errorDetails,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorDetails': errorDetails,
      'status': status,
    };
  }

  factory TargetsTypeConditionResponse.fromMap(Map<String, dynamic> map) {
    return TargetsTypeConditionResponse(
      errorDetails: pulumi.Input.fromValue(map['errorDetails'] as String),
      status: pulumi.Input.fromValue(map['status'] as bool),
    );
  }
}

