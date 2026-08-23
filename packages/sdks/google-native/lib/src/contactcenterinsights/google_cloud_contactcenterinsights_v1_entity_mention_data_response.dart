// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_sentiment_data_response.dart';

/// The data for an entity mention annotation. This represents a mention of an `Entity` in the conversation.
class GoogleCloudContactcenterinsightsV1EntityMentionDataResponse {
  /// The key of this entity in conversation entities. Can be used to retrieve the exact `Entity` this mention is attached to.
  final pulumi.Input<String> entityUniqueId;
  /// Sentiment expressed for this mention of the entity.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1SentimentDataResponse> sentiment;
  /// The type of the entity mention.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudContactcenterinsightsV1EntityMentionDataResponse].
  /// [entityUniqueId] The key of this entity in conversation entities. Can be used to retrieve the exact `Entity` this mention is attached to.
  /// [sentiment] Sentiment expressed for this mention of the entity.
  /// [type] The type of the entity mention.
  const GoogleCloudContactcenterinsightsV1EntityMentionDataResponse({
    required this.entityUniqueId,
    required this.sentiment,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityUniqueId': entityUniqueId,
      'sentiment': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1SentimentDataResponse, Map<String, dynamic>>(sentiment, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GoogleCloudContactcenterinsightsV1EntityMentionDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1EntityMentionDataResponse(
      entityUniqueId: pulumi.Input.fromValue(map['entityUniqueId'] as String),
      sentiment: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1SentimentDataResponse.fromMap((map['sentiment']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
