// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartCodeExecutionResult {
  /// The identifier of the ExecutableCode part this result is for.
  final pulumi.Input<String?>? id;
  /// Outcome of the code execution. Possible values: ["OUTCOME_UNSPECIFIED", "OUTCOME_OK", "OUTCOME_FAILED", "OUTCOME_DEADLINE_EXCEEDED"]
  final pulumi.Input<String> outcome;
  /// Contains stdout when code execution is successful, stderr or other description otherwise.
  final pulumi.Input<String?>? output;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartCodeExecutionResult].
  /// [id] The identifier of the ExecutableCode part this result is for.
  /// [outcome] Outcome of the code execution. Possible values: ["OUTCOME_UNSPECIFIED", "OUTCOME_OK", "OUTCOME_FAILED", "OUTCOME_DEADLINE_EXCEEDED"]
  /// [output] Contains stdout when code execution is successful, stderr or other description otherwise.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartCodeExecutionResult({
    this.id,
    required this.outcome,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'outcome': outcome,
      'output': ?output,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartCodeExecutionResult.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartCodeExecutionResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outcome: pulumi.Input.fromValue(map['outcome'] as String),
      output: (() { final guardedValue = map['output']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
