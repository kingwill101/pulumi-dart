// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent Assist Smart Reply data.
class GoogleCloudContactcenterinsightsV1SmartReplyDataResponse {
  /// The system's confidence score that this reply is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  final pulumi.Input<double> confidenceScore;
  /// Map that contains metadata about the Smart Reply and the document from which it originates.
  final pulumi.Input<Map<String, String>> metadata;
  /// The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  final pulumi.Input<String> queryRecord;
  /// The content of the reply.
  final pulumi.Input<String> reply;

  /// Creates a new [GoogleCloudContactcenterinsightsV1SmartReplyDataResponse].
  /// [confidenceScore] The system's confidence score that this reply is a good match for this conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely certain).
  /// [metadata] Map that contains metadata about the Smart Reply and the document from which it originates.
  /// [queryRecord] The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{answer_record}
  /// [reply] The content of the reply.
  GoogleCloudContactcenterinsightsV1SmartReplyDataResponse({
    required this.confidenceScore,
    required this.metadata,
    required this.queryRecord,
    required this.reply,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceScore': confidenceScore,
      'metadata': metadata,
      'queryRecord': queryRecord,
      'reply': reply,
    };
  }

  factory GoogleCloudContactcenterinsightsV1SmartReplyDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1SmartReplyDataResponse(
      confidenceScore: (map['confidenceScore'] as double).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      queryRecord: (map['queryRecord'] as String).input(),
      reply: (map['reply'] as String).input(),
    );
  }
}

