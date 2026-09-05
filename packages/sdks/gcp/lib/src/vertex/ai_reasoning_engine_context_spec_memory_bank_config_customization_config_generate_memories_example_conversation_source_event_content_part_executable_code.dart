// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartExecutableCode {
  /// The code to be executed.
  final pulumi.Input<String> code;
  /// Unique identifier of the ExecutableCode part.
  final pulumi.Input<String?>? id;
  /// Supported programming languages for the generated code. Possible values: ["LANGUAGE_UNSPECIFIED", "PYTHON", "BASH"]
  final pulumi.Input<String> language;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartExecutableCode].
  /// [code] The code to be executed.
  /// [id] Unique identifier of the ExecutableCode part.
  /// [language] Supported programming languages for the generated code. Possible values: ["LANGUAGE_UNSPECIFIED", "PYTHON", "BASH"]
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartExecutableCode({
    required this.code,
    this.id,
    required this.language,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'id': ?id,
      'language': language,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartExecutableCode.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartExecutableCode(
      code: pulumi.Input.fromValue(map['code'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      language: pulumi.Input.fromValue(map['language'] as String),
    );
  }
}
