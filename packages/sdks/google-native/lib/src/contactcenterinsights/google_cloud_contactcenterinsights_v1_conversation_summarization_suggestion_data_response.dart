// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Conversation summarization suggestion data.
class GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse {
  /// The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  final pulumi.Input<String> answerRecord;
  /// The confidence score of the summarization.
  final pulumi.Input<double> confidence;
  /// The name of the model that generates this summary. Format: projects/{project}/locations/{location}/conversationModels/{conversation_model}
  final pulumi.Input<String> conversationModel;
  /// A map that contains metadata about the summarization and the document from which it originates.
  final pulumi.Input<Map<String, String>> metadata;
  /// The summarization content that is concatenated into one string.
  final pulumi.Input<String> text;
  /// The summarization content that is divided into sections. The key is the section's name and the value is the section's content. There is no specific format for the key or value.
  final pulumi.Input<Map<String, String>> textSections;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse].
  /// [answerRecord] The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  /// [confidence] The confidence score of the summarization.
  /// [conversationModel] The name of the model that generates this summary. Format: projects/{project}/locations/{location}/conversationModels/{conversation_model}
  /// [metadata] A map that contains metadata about the summarization and the document from which it originates.
  /// [text] The summarization content that is concatenated into one string.
  /// [textSections] The summarization content that is divided into sections. The key is the section's name and the value is the section's content. There is no specific format for the key or value.
  GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse({
    required this.answerRecord,
    required this.confidence,
    required this.conversationModel,
    required this.metadata,
    required this.text,
    required this.textSections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answerRecord': answerRecord,
      'confidence': confidence,
      'conversationModel': conversationModel,
      'metadata': metadata,
      'text': text,
      'textSections': textSections,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse(
      answerRecord: (map['answerRecord'] as String).input(),
      confidence: (map['confidence'] as double).input(),
      conversationModel: (map['conversationModel'] as String).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      text: (map['text'] as String).input(),
      textSections: ((map['textSections'] as Map).cast<String, String>()).input(),
    );
  }
}

