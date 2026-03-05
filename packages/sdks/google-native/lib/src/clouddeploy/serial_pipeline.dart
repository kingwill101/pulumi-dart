// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage.dart';

/// SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.
class SerialPipeline {
  /// Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow.
  final pulumi.Input<List<Stage>>? stages;

  /// Creates a new [SerialPipeline].
  /// [stages] Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow.
  SerialPipeline({
    this.stages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stages': ?pulumi.Input.mapOptionalInputValue<List<Stage>, List<Map<String, dynamic>>>(stages, (value) => pulumi.Input.encodeList<Stage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SerialPipeline.fromMap(Map<String, dynamic> map) {
    return SerialPipeline(
      stages: (() { final guardedValue = map['stages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Stage>(guardedValue, (value) => Stage.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

