// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_rag_file_rag_file_parsing_config_layout_parser.dart';
import 'ai_rag_file_rag_file_parsing_config_llm_parser.dart';

class AiRagFileRagFileParsingConfig {
  /// The Document AI Layout Parser to use for the file.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileRagFileParsingConfigLayoutParser?>? layoutParser;
  /// The LLM parser to use for the file.
  /// Structure is documented below.
  final pulumi.Input<AiRagFileRagFileParsingConfigLlmParser?>? llmParser;

  /// Creates a new [AiRagFileRagFileParsingConfig].
  /// [layoutParser] The Document AI Layout Parser to use for the file.
  /// [llmParser] The LLM parser to use for the file.
  const AiRagFileRagFileParsingConfig({
    this.layoutParser,
    this.llmParser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'layoutParser': ?pulumi.Input.mapOptionalInputValue<AiRagFileRagFileParsingConfigLayoutParser, Map<String, dynamic>>(layoutParser, (value) => value.toMap()),
      'llmParser': ?pulumi.Input.mapOptionalInputValue<AiRagFileRagFileParsingConfigLlmParser, Map<String, dynamic>>(llmParser, (value) => value.toMap()),
    };
  }

  factory AiRagFileRagFileParsingConfig.fromMap(Map<String, dynamic> map) {
    return AiRagFileRagFileParsingConfig(
      layoutParser: (() { final guardedValue = map['layoutParser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileRagFileParsingConfigLayoutParser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      llmParser: (() { final guardedValue = map['llmParser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiRagFileRagFileParsingConfigLlmParser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
