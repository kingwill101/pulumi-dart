// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_serial_pipeline_stage.dart';

class DeliveryPipelineSerialPipeline {
  /// Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow.
  final pulumi.Input<List<DeliveryPipelineSerialPipelineStage>>? stages;

  /// Creates a new [DeliveryPipelineSerialPipeline].
  /// [stages] Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow.
  const DeliveryPipelineSerialPipeline({
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stages': ?pulumi.Input.mapOptionalInputValue<List<DeliveryPipelineSerialPipelineStage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<DeliveryPipelineSerialPipelineStage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeliveryPipelineSerialPipeline.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineSerialPipeline(
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeliveryPipelineSerialPipelineStage>(guardedValue, (value) => DeliveryPipelineSerialPipelineStage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

