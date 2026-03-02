// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent Assist Smart Compose suggestion data.
class GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse {
  /// The system's confidence score that this suggestion is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  final pulumi.Input<double> confidenceScore;
  /// Map that contains metadata about the Smart Compose suggestion and the document from which it originates.
  final pulumi.Input<Map<String, String>> metadata;
  /// The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  final pulumi.Input<String> queryRecord;
  /// The content of the suggestion.
  final pulumi.Input<String> suggestion;

  /// Creates a new [GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse].
  /// [confidenceScore] The system's confidence score that this suggestion is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// [metadata] Map that contains metadata about the Smart Compose suggestion and the document from which it originates.
  /// [queryRecord] The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  /// [suggestion] The content of the suggestion.
  GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse({
    required this.confidenceScore,
    required this.metadata,
    required this.queryRecord,
    required this.suggestion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceScore': confidenceScore,
      'metadata': metadata,
      'queryRecord': queryRecord,
      'suggestion': suggestion,
    };
  }

  factory GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse(
      confidenceScore: (map['confidenceScore'] as double).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      queryRecord: (map['queryRecord'] as String).input(),
      suggestion: (map['suggestion'] as String).input(),
    );
  }
}

