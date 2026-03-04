// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_sentiment_data_response.dart';

/// One channel of conversation-level sentiment data.
class GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse {
  /// The channel of the audio that the data applies to.
  final pulumi.Input<int> channelTag;

  /// Data specifying sentiment.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1SentimentDataResponse>
  sentimentData;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse].
  /// [channelTag] The channel of the audio that the data applies to.
  /// [sentimentData] Data specifying sentiment.
  GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse({
    required this.channelTag,
    required this.sentimentData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelTag': channelTag,
      'sentimentData':
          pulumi.Input.mapInputValue<
            GoogleCloudContactcenterinsightsV1SentimentDataResponse,
            Map<String, dynamic>
          >(sentimentData, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse(
      channelTag: pulumi.Input.fromValue(map['channelTag'] as int),
      sentimentData: pulumi.Input.fromValue(
        GoogleCloudContactcenterinsightsV1SentimentDataResponse.fromMap(
          (map['sentimentData']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
