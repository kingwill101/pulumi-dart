// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscriptionWord {
  /// End offset in time of the word relative to the start of the audio.
  final pulumi.Input<String?>? endOffset;
  /// Start offset in time of the word relative to the start of the audio.
  final pulumi.Input<String?>? startOffset;
  /// Transcript of the word.
  final pulumi.Input<String> word;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscriptionWord].
  /// [endOffset] End offset in time of the word relative to the start of the audio.
  /// [startOffset] Start offset in time of the word relative to the start of the audio.
  /// [word] Transcript of the word.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscriptionWord({
    this.endOffset,
    this.startOffset,
    required this.word,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endOffset': ?endOffset,
      'startOffset': ?startOffset,
      'word': word,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscriptionWord.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartAudioTranscriptionWord(
      endOffset: (() { final guardedValue = map['endOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startOffset: (() { final guardedValue = map['startOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      word: pulumi.Input.fromValue(map['word'] as String),
    );
  }
}
