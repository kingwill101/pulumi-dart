// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_canary.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard.dart';

class DeliveryPipelineSerialPipelineStageStrategy {
  /// Canary deployment strategy provides progressive percentage based deployments to a Target.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyCanary>? canary;
  /// Standard deployment strategy executes a single deploy and allows verifying the deployment.
  final pulumi.Input<DeliveryPipelineSerialPipelineStageStrategyStandard>? standard;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategy].
  /// [canary] Canary deployment strategy provides progressive percentage based deployments to a Target.
  /// [standard] Standard deployment strategy executes a single deploy and allows verifying the deployment.
  DeliveryPipelineSerialPipelineStageStrategy({
    this.canary,
    this.standard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canary': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyCanary, Map<String, dynamic>>(canary, (value) => value.toMap()),
      'standard': ?pulumi.Input.mapOptionalInputValue<DeliveryPipelineSerialPipelineStageStrategyStandard, Map<String, dynamic>>(standard, (value) => value.toMap()),
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategy.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipelineStageStrategy(
      canary: (() { final guardedValue = map['canary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyCanary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      standard: (() { final guardedValue = map['standard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryPipelineSerialPipelineStageStrategyStandard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

