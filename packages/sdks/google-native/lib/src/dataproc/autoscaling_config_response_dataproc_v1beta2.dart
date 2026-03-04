// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Autoscaling Policy config associated with the cluster.
class AutoscalingConfigResponseDataprocV1beta2 {
  /// Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.
  final pulumi.Input<String> policyUri;

  /// Creates a new [AutoscalingConfigResponseDataprocV1beta2].
  /// [policyUri] Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.
  AutoscalingConfigResponseDataprocV1beta2({required this.policyUri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'policyUri': policyUri};
  }

  factory AutoscalingConfigResponseDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoscalingConfigResponseDataprocV1beta2(
      policyUri: pulumi.Input.fromValue(map['policyUri'] as String),
    );
  }
}
