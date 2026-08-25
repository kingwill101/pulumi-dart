// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RolloutPlanWaveOrchestrationOptionsDelay {
  /// Controls whether the delay should only be added between batches of projects corresponding to different locations, or also between batches of projects corresponding to the same location.
  /// Possible values are: `DELIMITER_UNSPECIFIED`, `DELIMITER_LOCATION`, `DELIMITER_BATCH`.
  final pulumi.Input<String?>? delimiter;
  /// The duration of the delay, if any, to be added between batches of projects.
  final pulumi.Input<String?>? duration;
  /// Controls whether the specified duration is to be added at the end of each batch, or if the total processing time for each batch will be padded if needed to meet the specified duration.
  /// Possible values are: `TYPE_UNSPECIFIED`, `TYPE_OFFSET`, `TYPE_MINIMUM`.
  final pulumi.Input<String?>? type;

  /// Creates a new [RolloutPlanWaveOrchestrationOptionsDelay].
  /// [delimiter] Controls whether the delay should only be added between batches of projects corresponding to different locations, or also between batches of projects corresponding to the same location.
  /// [duration] The duration of the delay, if any, to be added between batches of projects.
  /// [type] Controls whether the specified duration is to be added at the end of each batch, or if the total processing time for each batch will be padded if needed to meet the specified duration.
  const RolloutPlanWaveOrchestrationOptionsDelay({
    this.delimiter,
    this.duration,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delimiter': ?delimiter,
      'duration': ?duration,
      'type': ?type,
    };
  }

  factory RolloutPlanWaveOrchestrationOptionsDelay.fromMap(Map<String, dynamic> map) {
    return RolloutPlanWaveOrchestrationOptionsDelay(
      delimiter: (() { final guardedValue = map['delimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
