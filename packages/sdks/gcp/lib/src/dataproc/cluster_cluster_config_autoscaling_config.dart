// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigAutoscalingConfig {
  /// The autoscaling policy used by the cluster.
  ///
  /// Only resource names including projectid and location (region) are valid. Examples:
  ///
  /// `https://www.googleapis.com/compute/v1/projects/[projectId]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]`
  /// `projects/[projectId]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]`
  /// Note that the policy must be in the same project and Cloud Dataproc region.
  ///
  /// - - -
  final pulumi.Input<String> policyUri;

  /// Creates a new [ClusterClusterConfigAutoscalingConfig].
  /// [policyUri] The autoscaling policy used by the cluster.
  ClusterClusterConfigAutoscalingConfig({
    required this.policyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyUri': policyUri,
    };
  }

  factory ClusterClusterConfigAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigAutoscalingConfig(
      policyUri: pulumi.Input.fromValue(map['policyUri'] as String),
    );
  }
}

