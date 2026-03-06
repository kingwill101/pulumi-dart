// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Word-level info for words in a transcript.
class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse {
  /// A confidence estimate between 0.0 and 1.0 of the fidelity of this word. A default value of 0.0 indicates that the value is unset.
  final pulumi.Input<double> confidence;
  /// Time offset of the end of this word relative to the beginning of the total conversation.
  final pulumi.Input<String> endOffset;
  /// Time offset of the start of this word relative to the beginning of the total conversation.
  final pulumi.Input<String> startOffset;
  /// The word itself. Includes punctuation marks that surround the word.
  final pulumi.Input<String> word;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse].
  /// [confidence] A confidence estimate between 0.0 and 1.0 of the fidelity of this word. A default value of 0.0 indicates that the value is unset.
  /// [endOffset] Time offset of the end of this word relative to the beginning of the total conversation.
  /// [startOffset] Time offset of the start of this word relative to the beginning of the total conversation.
  /// [word] The word itself. Includes punctuation marks that surround the word.
  const GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse({
    required this.confidence,
    required this.endOffset,
    required this.startOffset,
    required this.word,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidence': confidence,
      'endOffset': endOffset,
      'startOffset': startOffset,
      'word': word,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfoResponse(
      confidence: pulumi.Input.fromValue(map['confidence'] as double),
      endOffset: pulumi.Input.fromValue(map['endOffset'] as String),
      startOffset: pulumi.Input.fromValue(map['startOffset'] as String),
      word: pulumi.Input.fromValue(map['word'] as String),
    );
  }
}

