// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule {
  /// Optional. Specifies to trigger generation when the event count reaches this limit.
  final pulumi.Input<int>? eventCount;
  /// Optional. Specifies to trigger generation at a fixed interval. The duration
  /// must have a minute-level granularity.
  final pulumi.Input<String>? fixedInterval;
  /// Optional. Specifies to trigger generation if the stream is inactive for the
  /// specified duration after the most recent event. The duration must have a
  /// minute-level granularity.
  final pulumi.Input<String>? idleDuration;
  /// Optional. Re-include the last N already-processed events in the next window.
  final pulumi.Input<int>? overlapEventCount;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule].
  /// [eventCount] Optional. Specifies to trigger generation when the event count reaches this limit.
  /// [fixedInterval] Optional. Specifies to trigger generation at a fixed interval. The duration
  /// [idleDuration] Optional. Specifies to trigger generation if the stream is inactive for the
  /// [overlapEventCount] Optional. Re-include the last N already-processed events in the next window.
  const AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule({
    this.eventCount,
    this.fixedInterval,
    this.idleDuration,
    this.overlapEventCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventCount': ?eventCount,
      'fixedInterval': ?fixedInterval,
      'idleDuration': ?idleDuration,
      'overlapEventCount': ?overlapEventCount,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigGenerationConfigGenerationTriggerConfigGenerationRule(
      eventCount: (() { final guardedValue = map['eventCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fixedInterval: (() { final guardedValue = map['fixedInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleDuration: (() { final guardedValue = map['idleDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overlapEventCount: (() { final guardedValue = map['overlapEventCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
