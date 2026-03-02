// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent Assist Article Suggestion data.
class GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse {
  /// The system's confidence score that this article is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  final pulumi.Input<double> confidenceScore;
  /// Map that contains metadata about the Article Suggestion and the document that it originates from.
  final pulumi.Input<Map<String, String>> metadata;
  /// The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  final pulumi.Input<String> queryRecord;
  /// The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}
  final pulumi.Input<String> source;
  /// Article title.
  final pulumi.Input<String> title;
  /// Article URI.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse].
  /// [confidenceScore] The system's confidence score that this article is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// [metadata] Map that contains metadata about the Article Suggestion and the document that it originates from.
  /// [queryRecord] The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  /// [source] The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeBases/{knowledge_base}/documents/{document}
  /// [title] Article title.
  /// [uri] Article URI.
  GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse({
    required this.confidenceScore,
    required this.metadata,
    required this.queryRecord,
    required this.source,
    required this.title,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceScore': confidenceScore,
      'metadata': metadata,
      'queryRecord': queryRecord,
      'source': source,
      'title': title,
      'uri': uri,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse(
      confidenceScore: (map['confidenceScore'] as double).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      queryRecord: (map['queryRecord'] as String).input(),
      source: (map['source'] as String).input(),
      title: (map['title'] as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

