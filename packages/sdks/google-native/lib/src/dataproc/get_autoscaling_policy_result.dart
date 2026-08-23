// ignore_for_file: unused_element, unnecessary_cast

import 'basic_autoscaling_algorithm_response.dart';
import 'instance_group_autoscaling_policy_config_response.dart';

/// Result data returned by getAutoscalingPolicy.
class GetAutoscalingPolicyResult {
  final BasicAutoscalingAlgorithmResponse basicAlgorithm;
  /// Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
  final Map<String, String> labels;
  /// The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  final String name;
  /// Optional. Describes how the autoscaler will operate for secondary workers.
  final InstanceGroupAutoscalingPolicyConfigResponse secondaryWorkerConfig;
  /// Describes how the autoscaler will operate for primary workers.
  final InstanceGroupAutoscalingPolicyConfigResponse workerConfig;

  /// Creates a new [GetAutoscalingPolicyResult].
  /// [basicAlgorithm] Required.
  /// [labels] Optional. The labels to associate with this autoscaling policy. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with an autoscaling policy.
  /// [name] The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  /// [secondaryWorkerConfig] Optional. Describes how the autoscaler will operate for secondary workers.
  /// [workerConfig] Describes how the autoscaler will operate for primary workers.
  const GetAutoscalingPolicyResult({
    required this.basicAlgorithm,
    required this.labels,
    required this.name,
    required this.secondaryWorkerConfig,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAlgorithm': basicAlgorithm.toMap(),
      'labels': labels,
      'name': name,
      'secondaryWorkerConfig': secondaryWorkerConfig.toMap(),
      'workerConfig': workerConfig.toMap(),
    };
  }

  factory GetAutoscalingPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAutoscalingPolicyResult(
      basicAlgorithm: BasicAutoscalingAlgorithmResponse.fromMap((map['basicAlgorithm']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      secondaryWorkerConfig: InstanceGroupAutoscalingPolicyConfigResponse.fromMap((map['secondaryWorkerConfig']! as Map).cast<String, dynamic>()),
      workerConfig: InstanceGroupAutoscalingPolicyConfigResponse.fromMap((map['workerConfig']! as Map).cast<String, dynamic>()),
    );
  }
}
