// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_deploy_config_dedicated_resources_autoscaling_metric_spec.dart';
import 'ai_endpoint_with_model_garden_deployment_deploy_config_dedicated_resources_machine_spec.dart';

class AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources {
  /// The metric specifications that overrides a resource
  /// utilization metric (CPU utilization, accelerator's duty cycle, and so on)
  /// target value (default to 60 if not set). At most one entry is allowed per
  /// metric.
  /// If machine_spec.accelerator_count is
  /// above 0, the autoscaling will be based on both CPU utilization and
  /// accelerator's duty cycle metrics and scale up when either metrics exceeds
  /// its target value while scale down if both metrics are under their target
  /// value. The default target value is 60 for both metrics.
  /// If machine_spec.accelerator_count is
  /// 0, the autoscaling will be based on CPU utilization metric only with
  /// default target value 60 if not explicitly set.
  /// For example, in the case of Online Prediction, if you want to override
  /// target CPU utilization to 80, you should set
  /// autoscaling_metric_specs.metric_name
  /// to `aiplatform.googleapis.com/prediction/online/cpu/utilization` and
  /// autoscaling_metric_specs.target to `80`.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec
    >
  >?
  autoscalingMetricSpecs;

  /// Specification of a single machine.
  /// Structure is documented below.
  final pulumi.Input<
    AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec
  >
  machineSpec;

  /// The maximum number of replicas that may be deployed on when the traffic
  /// against it increases. If the requested value is too large, the deployment
  /// will error, but if deployment succeeds then the ability to scale to that
  /// many replicas is guaranteed (barring service outages). If traffic increases
  /// beyond what its replicas at maximum may handle, a portion of the traffic
  /// will be dropped. If this value is not provided, will use
  /// min_replica_count as the default value.
  /// The value of this field impacts the charge against Vertex CPU and GPU
  /// quotas. Specifically, you will be charged for (max_replica_count *
  /// number of cores in the selected machine type) and (max_replica_count *
  /// number of GPUs per replica in the selected machine type).
  final pulumi.Input<int>? maxReplicaCount;

  /// The minimum number of machine replicas that will be always deployed on.
  /// This value must be greater than or equal to 1.
  /// If traffic increases, it may dynamically be deployed onto more replicas,
  /// and as traffic decreases, some of these extra replicas may be freed.
  final pulumi.Input<int> minReplicaCount;

  /// Number of required available replicas for the deployment to succeed.
  /// This field is only needed when partial deployment/mutation is
  /// desired. If set, the deploy/mutate operation will succeed once
  /// available_replica_count reaches required_replica_count, and the rest of
  /// the replicas will be retried. If not set, the default
  /// required_replica_count will be min_replica_count.
  final pulumi.Input<int>? requiredReplicaCount;

  /// If true, schedule the deployment workload on [spot
  /// VMs](https://cloud.google.com/kubernetes-engine/docs/concepts/spot-vms).
  final pulumi.Input<bool>? spot;

  /// Creates a new [AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources].
  /// [autoscalingMetricSpecs] The metric specifications that overrides a resource
  /// [machineSpec] Specification of a single machine.
  /// [maxReplicaCount] The maximum number of replicas that may be deployed on when the traffic
  /// [minReplicaCount] The minimum number of machine replicas that will be always deployed on.
  /// [requiredReplicaCount] Number of required available replicas for the deployment to succeed.
  /// [spot] If true, schedule the deployment workload on [spot
  AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources({
    this.autoscalingMetricSpecs,
    required this.machineSpec,
    this.maxReplicaCount,
    required this.minReplicaCount,
    this.requiredReplicaCount,
    this.spot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingMetricSpecs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec
            >,
            List<Map<String, dynamic>>
          >(
            autoscalingMetricSpecs,
            (value) =>
                pulumi.Input.encodeList<
                  AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'machineSpec':
          pulumi.Input.mapInputValue<
            AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec,
            Map<String, dynamic>
          >(machineSpec, (value) => value.toMap()),
      'maxReplicaCount': ?maxReplicaCount,
      'minReplicaCount': minReplicaCount,
      'requiredReplicaCount': ?requiredReplicaCount,
      'spot': ?spot,
    };
  }

  factory AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources(
      autoscalingMetricSpecs: (() {
        final guardedValue = map['autoscalingMetricSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec
          >(
            guardedValue,
            (value) =>
                AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      machineSpec: pulumi.Input.fromValue(
        AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec.fromMap(
          (map['machineSpec']! as Map).cast<String, dynamic>(),
        ),
      ),
      maxReplicaCount: (() {
        final guardedValue = map['maxReplicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minReplicaCount: pulumi.Input.fromValue(map['minReplicaCount'] as int),
      requiredReplicaCount: (() {
        final guardedValue = map['requiredReplicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      spot: (() {
        final guardedValue = map['spot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
