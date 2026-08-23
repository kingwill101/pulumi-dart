// ignore_for_file: unused_element, unnecessary_cast

import 'basic_autoscaling_algorithm_response_dataproc_v1beta2.dart';
import 'instance_group_autoscaling_policy_config_response_dataproc_v1beta2.dart';

/// Result data returned by getAutoscalingPolicy.
class GetAutoscalingPolicyDataprocV1beta2Result {
  final BasicAutoscalingAlgorithmResponseDataprocV1beta2 basicAlgorithm;
  /// The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  final String name;
  /// Optional. Describes how the autoscaler will operate for secondary workers.
  final InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2 secondaryWorkerConfig;
  /// Describes how the autoscaler will operate for primary workers.
  final InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2 workerConfig;

  /// Creates a new [GetAutoscalingPolicyDataprocV1beta2Result].
  /// [basicAlgorithm] Required.
  /// [name] The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  /// [secondaryWorkerConfig] Optional. Describes how the autoscaler will operate for secondary workers.
  /// [workerConfig] Describes how the autoscaler will operate for primary workers.
  const GetAutoscalingPolicyDataprocV1beta2Result({
    required this.basicAlgorithm,
    required this.name,
    required this.secondaryWorkerConfig,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAlgorithm': basicAlgorithm.toMap(),
      'name': name,
      'secondaryWorkerConfig': secondaryWorkerConfig.toMap(),
      'workerConfig': workerConfig.toMap(),
    };
  }

  factory GetAutoscalingPolicyDataprocV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetAutoscalingPolicyDataprocV1beta2Result(
      basicAlgorithm: BasicAutoscalingAlgorithmResponseDataprocV1beta2.fromMap((map['basicAlgorithm']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      secondaryWorkerConfig: InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2.fromMap((map['secondaryWorkerConfig']! as Map).cast<String, dynamic>()),
      workerConfig: InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2.fromMap((map['workerConfig']! as Map).cast<String, dynamic>()),
    );
  }
}
