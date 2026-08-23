// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationGoldenTurnRootSpan {
  /// Output only. Key-value attributes associated with the span.
  final pulumi.Input<String>? attributes;
  /// Output only. The child spans that are nested under this span.
  final pulumi.Input<String>? childSpans;
  /// Output only. The duration of the span.
  final pulumi.Input<String>? duration;
  /// Output only. The end time of the span.
  final pulumi.Input<String>? endTime;
  /// Identifier. The unique identifier of the evaluation.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/evaluations/{evaluation}`
  final pulumi.Input<String>? name;
  /// Output only. The start time of the span.
  final pulumi.Input<String>? startTime;

  /// Creates a new [EvaluationGoldenTurnRootSpan].
  /// [attributes] Output only. Key-value attributes associated with the span.
  /// [childSpans] Output only. The child spans that are nested under this span.
  /// [duration] Output only. The duration of the span.
  /// [endTime] Output only. The end time of the span.
  /// [name] Identifier. The unique identifier of the evaluation.
  /// [startTime] Output only. The start time of the span.
  const EvaluationGoldenTurnRootSpan({
    this.attributes,
    this.childSpans,
    this.duration,
    this.endTime,
    this.name,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'childSpans': ?childSpans,
      'duration': ?duration,
      'endTime': ?endTime,
      'name': ?name,
      'startTime': ?startTime,
    };
  }

  factory EvaluationGoldenTurnRootSpan.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnRootSpan(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      childSpans: (() { final guardedValue = map['childSpans']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
