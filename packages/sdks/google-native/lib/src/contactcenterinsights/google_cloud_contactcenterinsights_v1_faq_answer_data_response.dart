// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent Assist frequently-asked-question answer data.
class GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse {
  /// The piece of text from the `source` knowledge base document.
  final pulumi.Input<String> answer;
  /// The system's confidence score that this answer is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  final pulumi.Input<double> confidenceScore;
  /// Map that contains metadata about the FAQ answer and the document that it originates from.
  final pulumi.Input<Map<String, String>> metadata;
  /// The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  final pulumi.Input<String> queryRecord;
  /// The corresponding FAQ question.
  final pulumi.Input<String> question;
  /// The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}.
  final pulumi.Input<String> source;

  /// Creates a new [GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse].
  /// [answer] The piece of text from the `source` knowledge base document.
  /// [confidenceScore] The system's confidence score that this answer is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// [metadata] Map that contains metadata about the FAQ answer and the document that it originates from.
  /// [queryRecord] The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  /// [question] The corresponding FAQ question.
  /// [source] The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}.
  const GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse({
    required this.answer,
    required this.confidenceScore,
    required this.metadata,
    required this.queryRecord,
    required this.question,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'answer': answer,
      'confidenceScore': confidenceScore,
      'metadata': metadata,
      'queryRecord': queryRecord,
      'question': question,
      'source': source,
    };
  }

  factory GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse(
      answer: pulumi.Input.fromValue(map['answer'] as String),
      confidenceScore: pulumi.Input.fromValue(map['confidenceScore'] as double),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      queryRecord: pulumi.Input.fromValue(map['queryRecord'] as String),
      question: pulumi.Input.fromValue(map['question'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}

