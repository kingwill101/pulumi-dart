// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_generate_memories_example_conversation_source_event_content_part_audio_transcription_word.dart';

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscription {
  /// A label identifying the speaker of this audio segment (e.g. spk_1, spk_2). Present when diarization is set.
  final pulumi.Input<String?>? speakerLabel;
  /// The transcription text of this audio segment.
  final pulumi.Input<String> text;
  /// Detailed word-level transcriptions and timing details. Present when wordTimestamp is set.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscriptionWord>?>? words;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscription].
  /// [speakerLabel] A label identifying the speaker of this audio segment (e.g. spk_1, spk_2). Present when diarization is set.
  /// [text] The transcription text of this audio segment.
  /// [words] Detailed word-level transcriptions and timing details. Present when wordTimestamp is set.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscription({
    this.speakerLabel,
    required this.text,
    this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'speakerLabel': ?speakerLabel,
      'text': text,
      'words': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscriptionWord>, List<Map<String, dynamic>>>(words, (value) => pulumi.Input.encodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscriptionWord, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscription.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscription(
      speakerLabel: (() { final guardedValue = map['speakerLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: pulumi.Input.fromValue(map['text'] as String),
      words: (() { final guardedValue = map['words']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscriptionWord>(guardedValue, (value) => AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscriptionWord.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
