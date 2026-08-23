// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssessmentRuleSampleRule {
  /// To specify the filter for the conversions that should apply this sample
  /// rule. An empty filter means this sample rule applies to all conversations.
  final pulumi.Input<String>? conversationFilter;
  /// Group by dimension to sample the conversation. If no dimension is
  /// provided, the sampling will be applied to the project level.
  /// Current supported dimensions is 'quality_metadata.agent_info.agent_id'.
  final pulumi.Input<String>? dimension;
  /// Percentage of conversations that we should sample  based on the dimension
  /// between [0, 100].
  final pulumi.Input<double>? samplePercentage;
  /// Number of the conversations that we should sample based on the dimension.
  final pulumi.Input<int>? sampleRow;

  /// Creates a new [AssessmentRuleSampleRule].
  /// [conversationFilter] To specify the filter for the conversions that should apply this sample
  /// [dimension] Group by dimension to sample the conversation. If no dimension is
  /// [samplePercentage] Percentage of conversations that we should sample  based on the dimension
  /// [sampleRow] Number of the conversations that we should sample based on the dimension.
  const AssessmentRuleSampleRule({
    this.conversationFilter,
    this.dimension,
    this.samplePercentage,
    this.sampleRow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationFilter': ?conversationFilter,
      'dimension': ?dimension,
      'samplePercentage': ?samplePercentage,
      'sampleRow': ?sampleRow,
    };
  }

  factory AssessmentRuleSampleRule.fromMap(Map<String, dynamic> map) {
    return AssessmentRuleSampleRule(
      conversationFilter: (() { final guardedValue = map['conversationFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samplePercentage: (() { final guardedValue = map['samplePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      sampleRow: (() { final guardedValue = map['sampleRow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
