// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartVideoMetadata {
  /// The end offset of the video.
  final pulumi.Input<String?>? endOffset;
  /// The start offset of the video.
  final pulumi.Input<String?>? startOffset;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartVideoMetadata].
  /// [endOffset] The end offset of the video.
  /// [startOffset] The start offset of the video.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartVideoMetadata({
    this.endOffset,
    this.startOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endOffset': ?endOffset,
      'startOffset': ?startOffset,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartVideoMetadata.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleConversationSourceEventContentPartVideoMetadata(
      endOffset: (() { final guardedValue = map['endOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startOffset: (() { final guardedValue = map['startOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
