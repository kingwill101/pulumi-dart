// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig {
  /// Number of revisions to consider per candidate count.
  final pulumi.Input<int>? revisionsPerCandidateCount;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig].
  /// [revisionsPerCandidateCount] Number of revisions to consider per candidate count.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig({
    this.revisionsPerCandidateCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionsPerCandidateCount': ?revisionsPerCandidateCount,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigConsolidationConfig(
      revisionsPerCandidateCount: (() { final guardedValue = map['revisionsPerCandidateCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
