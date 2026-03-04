// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_deployed_model_dedicated_resource_autoscaling_metric_spec.dart';
import 'ai_endpoint_deployed_model_dedicated_resource_machine_spec.dart';

class AiEndpointDeployedModelDedicatedResource {
  /// (Output)
  /// The metric specifications that overrides a resource utilization metric (CPU utilization, accelerator's duty cycle, and so on) target value (default to 60 if not set). At most one entry is allowed per metric. If machine_spec.accelerator_count is above 0, the autoscaling will be based on both CPU utilization and accelerator's duty cycle metrics and scale up when either metrics exceeds its target value while scale down if both metrics are under their target value. The default target value is 60 for both metrics. If machine_spec.accelerator_count is 0, the autoscaling will be based on CPU utilization metric only with default target value 60 if not explicitly set. For example, in the case of Online Prediction, if you want to override target CPU utilization to 80, you should set autoscaling_metric_specs.metric_name to `aiplatform.googleapis.com/prediction/online/cpu/utilization` and autoscaling_metric_specs.target to `80`.
  /// Structure is documented below.
  final pulumi.Input<
    List<AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec>
  >?
  autoscalingMetricSpecs;

  /// (Output)
  /// The specification of a single machine used by the prediction.
  /// Structure is documented below.
  final pulumi.Input<List<AiEndpointDeployedModelDedicatedResourceMachineSpec>>?
  machineSpecs;

  /// (Output)
  /// The maximum number of replicas this DeployedModel may be deployed on when the traffic against it increases. If the requested value is too large, the deployment will error, but if deployment succeeds then the ability to scale the model to that many replicas is guaranteed (barring service outages). If traffic against the DeployedModel increases beyond what its replicas at maximum may handle, a portion of the traffic will be dropped. If this value is not provided, a no upper bound for scaling under heavy traffic will be assume, though Vertex AI may be unable to scale beyond certain replica number.
  final pulumi.Input<int>? maxReplicaCount;

  /// (Output)
  /// The minimum number of replicas this DeployedModel will be always deployed on. If traffic against it increases, it may dynamically be deployed onto more replicas up to max_replica_count, and as traffic decreases, some of these extra replicas may be freed. If the requested value is too large, the deployment will error.
  final pulumi.Input<int>? minReplicaCount;

  /// Creates a new [AiEndpointDeployedModelDedicatedResource].
  /// [autoscalingMetricSpecs] (Output)
  /// [machineSpecs] (Output)
  /// [maxReplicaCount] (Output)
  /// [minReplicaCount] (Output)
  AiEndpointDeployedModelDedicatedResource({
    this.autoscalingMetricSpecs,
    this.machineSpecs,
    this.maxReplicaCount,
    this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingMetricSpecs':
          ?pulumi.Input.mapOptionalInputValue<
            List<AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec>,
            List<Map<String, dynamic>>
          >(
            autoscalingMetricSpecs,
            (value) =>
                pulumi.Input.encodeList<
                  AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'machineSpecs':
          ?pulumi.Input.mapOptionalInputValue<
            List<AiEndpointDeployedModelDedicatedResourceMachineSpec>,
            List<Map<String, dynamic>>
          >(
            machineSpecs,
            (value) =>
                pulumi.Input.encodeList<
                  AiEndpointDeployedModelDedicatedResourceMachineSpec,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'maxReplicaCount': ?maxReplicaCount,
      'minReplicaCount': ?minReplicaCount,
    };
  }

  factory AiEndpointDeployedModelDedicatedResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointDeployedModelDedicatedResource(
      autoscalingMetricSpecs: (() {
        final guardedValue = map['autoscalingMetricSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec
          >(
            guardedValue,
            (value) =>
                AiEndpointDeployedModelDedicatedResourceAutoscalingMetricSpec.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      machineSpecs: (() {
        final guardedValue = map['machineSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AiEndpointDeployedModelDedicatedResourceMachineSpec
          >(
            guardedValue,
            (value) =>
                AiEndpointDeployedModelDedicatedResourceMachineSpec.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      maxReplicaCount: (() {
        final guardedValue = map['maxReplicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minReplicaCount: (() {
        final guardedValue = map['minReplicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
