// ignore_for_file: unused_element, unnecessary_cast


/// Conversation summarization suggestion data.
class GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse {
  /// The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  final String answerRecord;
  /// The confidence score of the summarization.
  final double confidence;
  /// The name of the model that generates this summary. Format: projects/{project}/locations/{location}/conversationModels/{conversation_model}
  final String conversationModel;
  /// A map that contains metadata about the summarization and the document from which it originates.
  final Map<String, String> metadata;
  /// The summarization content that is concatenated into one string.
  final String text;
  /// The summarization content that is divided into sections. The key is the section's name and the value is the section's content. There is no specific format for the key or value.
  final Map<String, String> textSections;

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
      answerRecord: map['answerRecord'] as String,
      confidence: map['confidence'] as double,
      conversationModel: map['conversationModel'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      text: map['text'] as String,
      textSections: (map['textSections'] as Map).cast<String, String>(),
    );
  }
}

