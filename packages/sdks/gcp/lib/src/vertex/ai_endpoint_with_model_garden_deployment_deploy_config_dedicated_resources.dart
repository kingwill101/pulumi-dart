// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_deploy_config_dedicated_resources_autoscaling_metric_spec.dart';
import 'ai_endpoint_with_model_garden_deployment_deploy_config_dedicated_resources_machine_spec.dart';
import 'ai_endpoint_with_model_garden_deployment_deploy_config_dedicated_resources_scale_to_zero_spec.dart';

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
  final pulumi.Input<List<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec>?>? autoscalingMetricSpecs;
  /// (Optional, Beta)
  /// Number of initial replicas being deployed on when scaling the workload up
  /// from zero or when creating the workload in case minReplicaCount = 0.
  /// When minReplicaCount &gt; 0 (meaning that the scale-to-zero feature is not
  /// enabled), initialReplicaCount should not be set. When minReplicaCount
  /// = 0 (meaning that the scale-to-zero feature is enabled),
  /// initialReplicaCount should be larger than zero, but no greater than
  /// max_replica_count.
  final pulumi.Input<int?>? initialReplicaCount;
  /// Specification of a single machine.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec> machineSpec;
  /// The maximum number of replicas that may be deployed on when the traffic
  /// against it increases. If the requested value is too large, the deployment
  /// will error, but if deployment succeeds then the ability to scale to that
  /// many replicas is guaranteed (barring service outages). If traffic increases
  /// beyond what its replicas at maximum may handle, a portion of the traffic
  /// will be dropped. If this value is not provided, will use
  /// minReplicaCount as the default value.
  /// The value of this field impacts the charge against Vertex CPU and GPU
  /// quotas. Specifically, you will be charged for (max_replica_count *
  /// number of cores in the selected machine type) and (max_replica_count *
  /// number of GPUs per replica in the selected machine type).
  final pulumi.Input<int?>? maxReplicaCount;
  /// The minimum number of machine replicas that will be always deployed on.
  /// This value must be greater than or equal to 1. To enable scale-to-zero
  /// (in beta), set this value to 0 and also set `initialReplicaCount`.
  /// If traffic increases, it may dynamically be deployed onto more replicas,
  /// and as traffic decreases, some of these extra replicas may be freed.
  final pulumi.Input<int> minReplicaCount;
  /// Number of required available replicas for the deployment to succeed.
  /// This field is only needed when partial deployment/mutation is
  /// desired. If set, the deploy/mutate operation will succeed once
  /// availableReplicaCount reaches required_replica_count, and the rest of
  /// the replicas will be retried. If not set, the default
  /// requiredReplicaCount will be min_replica_count.
  final pulumi.Input<int?>? requiredReplicaCount;
  /// (Optional, Beta)
  /// Specification for scale-to-zero feature.
  /// Structure is documented below.
  final pulumi.Input<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesScaleToZeroSpec?>? scaleToZeroSpec;
  /// If true, schedule the deployment workload on [spot
  /// VMs](https://cloud.google.com/kubernetes-engine/docs/concepts/spot-vms).
  final pulumi.Input<bool?>? spot;

  /// Creates a new [AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources].
  /// [autoscalingMetricSpecs] The metric specifications that overrides a resource
  /// [initialReplicaCount] (Optional, Beta)
  /// [machineSpec] Specification of a single machine.
  /// [maxReplicaCount] The maximum number of replicas that may be deployed on when the traffic
  /// [minReplicaCount] The minimum number of machine replicas that will be always deployed on.
  /// [requiredReplicaCount] Number of required available replicas for the deployment to succeed.
  /// [scaleToZeroSpec] (Optional, Beta)
  /// [spot] If true, schedule the deployment workload on [spot
  const AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources({
    this.autoscalingMetricSpecs,
    this.initialReplicaCount,
    required this.machineSpec,
    this.maxReplicaCount,
    required this.minReplicaCount,
    this.requiredReplicaCount,
    this.scaleToZeroSpec,
    this.spot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingMetricSpecs': ?pulumi.Input.mapOptionalInputValue<List<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec>, List<Map<String, dynamic>>>(autoscalingMetricSpecs, (value) => pulumi.Input.encodeList<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initialReplicaCount': ?initialReplicaCount,
      'machineSpec': pulumi.Input.mapInputValue<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'maxReplicaCount': ?maxReplicaCount,
      'minReplicaCount': minReplicaCount,
      'requiredReplicaCount': ?requiredReplicaCount,
      'scaleToZeroSpec': ?pulumi.Input.mapOptionalInputValue<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesScaleToZeroSpec, Map<String, dynamic>>(scaleToZeroSpec, (value) => value.toMap()),
      'spot': ?spot,
    };
  }

  factory AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources(
      autoscalingMetricSpecs: (() { final guardedValue = map['autoscalingMetricSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec>(guardedValue, (value) => AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesAutoscalingMetricSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initialReplicaCount: (() { final guardedValue = map['initialReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      machineSpec: pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpec.fromMap((map['machineSpec']! as Map).cast<String, dynamic>())),
      maxReplicaCount: (() { final guardedValue = map['maxReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minReplicaCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minReplicaCount'])),
      requiredReplicaCount: (() { final guardedValue = map['requiredReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      scaleToZeroSpec: (() { final guardedValue = map['scaleToZeroSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesScaleToZeroSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spot: (() { final guardedValue = map['spot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
