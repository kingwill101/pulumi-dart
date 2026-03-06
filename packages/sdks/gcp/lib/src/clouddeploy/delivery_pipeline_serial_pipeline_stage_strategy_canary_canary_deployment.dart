// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_postdeploy.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary_canary_deployment_predeploy.dart';

class DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment {
  /// Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 &lt;= n &lt; 100.
  final pulumi.Input<List<int>> percentages;
  /// Optional. Configuration for the postdeploy job of the last phase. If this is not configured, postdeploy job will not be present.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy>? postdeploy;
  /// Optional. Configuration for the predeploy job of the first phase. If this is not configured, predeploy job will not be present.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy>? predeploy;
  /// Whether to run verify tests after each percentage deployment.
  final pulumi.Input<bool>? verify;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment].
  /// [percentages] Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expected in ascending order and each integer n is 0 &lt;= n &lt; 100.
  /// [postdeploy] Optional. Configuration for the postdeploy job of the last phase. If this is not configured, postdeploy job will not be present.
  /// [predeploy] Optional. Configuration for the predeploy job of the first phase. If this is not configured, predeploy job will not be present.
  /// [verify] Whether to run verify tests after each percentage deployment.
  const DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment({
    required this.percentages,
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentages': percentages,
      'postdeploy': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy, Map<String, dynamic>>(postdeploy, (value) => value.toMap()),
      'predeploy': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy, Map<String, dynamic>>(predeploy, (value) => value.toMap()),
      'verify': ?verify,
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeployment(
      percentages: pulumi.Input.fromValue((map['percentages'] as List).cast<int>()),
      postdeploy: (() { final guardedValue = map['postdeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPostdeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predeploy: (() { final guardedValue = map['predeploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanaryCanaryDeploymentPredeploy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verify: (() { final guardedValue = map['verify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

