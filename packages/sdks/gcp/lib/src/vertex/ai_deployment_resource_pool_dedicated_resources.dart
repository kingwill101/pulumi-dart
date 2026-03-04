// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_deployment_resource_pool_dedicated_resources_autoscaling_metric_spec.dart';
import 'ai_deployment_resource_pool_dedicated_resources_machine_spec.dart';

class AiDeploymentResourcePoolDedicatedResources {
  /// A list of the metric specifications that overrides a resource utilization metric.
  /// Structure is documented below.
  final pulumi.Input<
    List<AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec>
  >?
  autoscalingMetricSpecs;

  /// The specification of a single machine used by the prediction
  /// Structure is documented below.
  final pulumi.Input<AiDeploymentResourcePoolDedicatedResourcesMachineSpec>
  machineSpec;

  /// The maximum number of replicas this DeployedModel may be deployed on when the traffic against it increases. If the requested value is too large, the deployment will error, but if deployment succeeds then the ability to scale the model to that many replicas is guaranteed (barring service outages). If traffic against the DeployedModel increases beyond what its replicas at maximum may handle, a portion of the traffic will be dropped. If this value is not provided, will use min_replica_count as the default value. The value of this field impacts the charge against Vertex CPU and GPU quotas. Specifically, you will be charged for max_replica_count * number of cores in the selected machine type) and (max_replica_count * number of GPUs per replica in the selected machine type).
  final pulumi.Input<int>? maxReplicaCount;

  /// The minimum number of machine replicas this DeployedModel will be always deployed on. This value must be greater than or equal to 1. If traffic against the DeployedModel increases, it may dynamically be deployed onto more replicas, and as traffic decreases, some of these extra replicas may be freed.
  final pulumi.Input<int> minReplicaCount;

  /// Creates a new [AiDeploymentResourcePoolDedicatedResources].
  /// [autoscalingMetricSpecs] A list of the metric specifications that overrides a resource utilization metric.
  /// [machineSpec] The specification of a single machine used by the prediction
  /// [maxReplicaCount] The maximum number of replicas this DeployedModel may be deployed on when the traffic against it increases. If the requested value is too large, the deployment will error, but if deployment succeeds then the ability to scale the model to that many replicas is guaranteed (barring service outages). If traffic against the DeployedModel increases beyond what its replicas at maximum may handle, a portion of the traffic will be dropped. If this value is not provided, will use min_replica_count as the default value. The value of this field impacts the charge against Vertex CPU and GPU quotas. Specifically, you will be charged for max_replica_count * number of cores in the selected machine type) and (max_replica_count * number of GPUs per replica in the selected machine type).
  /// [minReplicaCount] The minimum number of machine replicas this DeployedModel will be always deployed on. This value must be greater than or equal to 1. If traffic against the DeployedModel increases, it may dynamically be deployed onto more replicas, and as traffic decreases, some of these extra replicas may be freed.
  AiDeploymentResourcePoolDedicatedResources({
    this.autoscalingMetricSpecs,
    required this.machineSpec,
    this.maxReplicaCount,
    required this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingMetricSpecs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec
            >,
            List<Map<String, dynamic>>
          >(
            autoscalingMetricSpecs,
            (value) =>
                pulumi.Input.encodeList<
                  AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'machineSpec':
          pulumi.Input.mapInputValue<
            AiDeploymentResourcePoolDedicatedResourcesMachineSpec,
            Map<String, dynamic>
          >(machineSpec, (value) => value.toMap()),
      'maxReplicaCount': ?maxReplicaCount,
      'minReplicaCount': minReplicaCount,
    };
  }

  factory AiDeploymentResourcePoolDedicatedResources.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiDeploymentResourcePoolDedicatedResources(
      autoscalingMetricSpecs: (() {
        final guardedValue = map['autoscalingMetricSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec
          >(
            guardedValue,
            (value) =>
                AiDeploymentResourcePoolDedicatedResourcesAutoscalingMetricSpec.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      machineSpec: pulumi.Input.fromValue(
        AiDeploymentResourcePoolDedicatedResourcesMachineSpec.fromMap(
          (map['machineSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
      maxReplicaCount: (() {
        final guardedValue = map['maxReplicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minReplicaCount: pulumi.Input.fromValue(map['minReplicaCount'] as int),
    );
  }
}
