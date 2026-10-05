// ignore_for_file: unused_element, unnecessary_cast

import 'basic_autoscaling_algorithm_response_dataproc_v1beta2.dart';
import 'instance_group_autoscaling_policy_config_response_dataproc_v1beta2.dart';

/// Result data returned by getAutoscalingPolicy.
class GetAutoscalingPolicyDataprocV1beta2Result {
  final BasicAutoscalingAlgorithmResponseDataprocV1beta2? basicAlgorithm;
  /// The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  final String? name;
  /// Optional. Describes how the autoscaler will operate for secondary workers.
  final InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2? secondaryWorkerConfig;
  /// Describes how the autoscaler will operate for primary workers.
  final InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2? workerConfig;

  /// Creates a new [GetAutoscalingPolicyDataprocV1beta2Result].
  /// [basicAlgorithm] Optional.
  /// [name] The "resource name" of the autoscaling policy, as described in https://cloud.google.com/apis/design/resource_names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/regions/{region}/autoscalingPolicies/{policy_id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects/{project_id}/locations/{location}/autoscalingPolicies/{policy_id}
  /// [secondaryWorkerConfig] Optional. Describes how the autoscaler will operate for secondary workers.
  /// [workerConfig] Describes how the autoscaler will operate for primary workers.
  const GetAutoscalingPolicyDataprocV1beta2Result({
    this.basicAlgorithm,
    this.name,
    this.secondaryWorkerConfig,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAlgorithm': ?basicAlgorithm?.toMap(),
      'name': ?name,
      'secondaryWorkerConfig': ?secondaryWorkerConfig?.toMap(),
      'workerConfig': ?workerConfig?.toMap(),
    };
  }

  factory GetAutoscalingPolicyDataprocV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetAutoscalingPolicyDataprocV1beta2Result(
      basicAlgorithm: (() { final guardedValue = map['basicAlgorithm']; if (guardedValue == null) return null; return BasicAutoscalingAlgorithmResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryWorkerConfig: (() { final guardedValue = map['secondaryWorkerConfig']; if (guardedValue == null) return null; return InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workerConfig: (() { final guardedValue = map['workerConfig']; if (guardedValue == null) return null; return InstanceGroupAutoscalingPolicyConfigResponseDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
