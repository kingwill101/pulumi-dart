// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartSpeechMetadata {
  /// Identifies which speaker is speaking this turn.
  final pulumi.Input<String?>? speaker;
  /// Natural language description of the vocal style (e.g., "cheerful").
  final pulumi.Input<String?>? style;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartSpeechMetadata].
  /// [speaker] Identifies which speaker is speaking this turn.
  /// [style] Natural language description of the vocal style (e.g., "cheerful").
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartSpeechMetadata({
    this.speaker,
    this.style,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'speaker': ?speaker,
      'style': ?style,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartSpeechMetadata.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartSpeechMetadata(
      speaker: (() { final guardedValue = map['speaker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      style: (() { final guardedValue = map['style']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
