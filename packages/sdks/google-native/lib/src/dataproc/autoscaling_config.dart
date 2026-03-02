// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Autoscaling Policy config associated with the cluster.
class AutoscalingConfig {
  /// Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.
  final pulumi.Input<String>? policyUri;

  /// Creates a new [AutoscalingConfig].
  /// [policyUri] Optional. The autoscaling policy used by the cluster.Only resource names including projectid and location (region) are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id] projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]Note that the policy must be in the same project and Dataproc region.
  AutoscalingConfig({
    this.policyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyUri': ?policyUri,
    };
  }

  factory AutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfig(
      policyUri: map['policyUri'] == null ? null : (map['policyUri'] as String).input(),
    );
  }
}

