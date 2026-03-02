// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assistant_generation_config_system_instruction.dart';

class AssistantGenerationConfig {
  /// The default language to use for the generation of the assistant response.
  /// Use an ISO 639-1 language code such as `en`.
  /// If not specified, the language will be automatically detected.
  final pulumi.Input<String>? defaultLanguage;
  /// System instruction, also known as the prompt preamble for LLM calls.
  /// See also https://cloud.google.com/vertex-ai/generative-ai/docs/learn/prompts/system-instructions
  /// Structure is documented below.
  final pulumi.Input<AssistantGenerationConfigSystemInstruction>? systemInstruction;

  /// Creates a new [AssistantGenerationConfig].
  /// [defaultLanguage] The default language to use for the generation of the assistant response.
  /// [systemInstruction] System instruction, also known as the prompt preamble for LLM calls.
  AssistantGenerationConfig({
    this.defaultLanguage,
    this.systemInstruction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLanguage': ?defaultLanguage,
      'systemInstruction': ?pulumi.Input.mapOptionalInputValue<AssistantGenerationConfigSystemInstruction, Map<String, dynamic>>(systemInstruction, (value) => value.toMap()),
    };
  }

  factory AssistantGenerationConfig.fromMap(Map<String, dynamic> map) {
    return AssistantGenerationConfig(
      defaultLanguage: map['defaultLanguage'] == null ? null : (map['defaultLanguage'] as String).input(),
      systemInstruction: map['systemInstruction'] == null ? null : (AssistantGenerationConfigSystemInstruction.fromMap((map['systemInstruction'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

