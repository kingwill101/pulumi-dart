// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_postdeploy.dart';
import 'delivery_pipeline_serial_pipeline_stage_strategy_standard_predeploy.dart';

class DeliveryPipelineSerialPipelineStageStrategyStandard {
  /// Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  final pulumi.Input<
    DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy
  >?
  postdeploy;

  /// Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  final pulumi.Input<
    DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy
  >?
  predeploy;

  /// Whether to verify a deployment.
  final pulumi.Input<bool>? verify;

  /// Creates a new [DeliveryPipelineSerialPipelineStageStrategyStandard].
  /// [postdeploy] Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  /// [predeploy] Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  /// [verify] Whether to verify a deployment.
  DeliveryPipelineSerialPipelineStageStrategyStandard({
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postdeploy':
          ?pulumi.Input.mapOptionalInputValue<
            DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy,
            Map<String, dynamic>
          >(postdeploy, (value) => value.toMap()),
      'predeploy':
          ?pulumi.Input.mapOptionalInputValue<
            DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy,
            Map<String, dynamic>
          >(predeploy, (value) => value.toMap()),
      'verify': ?verify,
    };
  }

  factory DeliveryPipelineSerialPipelineStageStrategyStandard.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryPipelineSerialPipelineStageStrategyStandard(
      postdeploy: (() {
        final guardedValue = map['postdeploy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeliveryPipelineSerialPipelineStageStrategyStandardPostdeploy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      predeploy: (() {
        final guardedValue = map['predeploy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeliveryPipelineSerialPipelineStageStrategyStandardPredeploy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      verify: (() {
        final guardedValue = map['verify'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
