// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCall {
  /// The name of the tool's action associated with this call.
  final pulumi.Input<String?>? action;
  /// The tool associated with this call.
  final pulumi.Input<String?>? tool;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCall].
  /// [action] The name of the tool's action associated with this call.
  /// [tool] The tool associated with this call.
  const GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCall({
    this.action,
    this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'tool': ?tool,
    };
  }

  factory GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCall.fromMap(Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleOutputToolCallInfoToolCall(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tool: (() { final guardedValue = map['tool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
