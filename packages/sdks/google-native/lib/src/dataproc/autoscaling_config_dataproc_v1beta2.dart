// ignore_for_file: unused_element, unnecessary_cast


/// Autoscaling Policy config associated with the cluster.
class AutoscalingConfigDataprocV1beta2 {
  /// Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.
  final String? policyUri;

  /// Creates a new [AutoscalingConfigDataprocV1beta2].
  /// [policyUri] Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.
  AutoscalingConfigDataprocV1beta2({
    this.policyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyUri': ?policyUri,
    };
  }

  factory AutoscalingConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfigDataprocV1beta2(
      policyUri: map['policyUri'] == null ? null : map['policyUri'] as String,
    );
  }
}

