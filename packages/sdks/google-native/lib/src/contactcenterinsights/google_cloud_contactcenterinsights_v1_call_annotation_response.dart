// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_contactcenterinsights_v1_annotation_boundary_response.dart';
import 'google_cloud_contactcenterinsights_v1_entity_mention_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_intent_match_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_issue_match_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_phrase_match_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_sentiment_data_response.dart';

/// A piece of metadata that applies to a window of a call.
class GoogleCloudContactcenterinsightsV1CallAnnotationResponse {
  /// The boundary in the conversation where the annotation ends, inclusive.
  final GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse annotationEndBoundary;
  /// The boundary in the conversation where the annotation starts, inclusive.
  final GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse annotationStartBoundary;
  /// The channel of the audio where the annotation occurs. For single-channel audio, this field is not populated.
  final int channelTag;
  /// Data specifying an entity mention.
  final GoogleCloudContactcenterinsightsV1EntityMentionDataResponse entityMentionData;
  /// Data specifying a hold.
  final Map<String, dynamic> holdData;
  /// Data specifying an intent match.
  final GoogleCloudContactcenterinsightsV1IntentMatchDataResponse intentMatchData;
  /// Data specifying an interruption.
  final Map<String, dynamic> interruptionData;
  /// Data specifying an issue match.
  final GoogleCloudContactcenterinsightsV1IssueMatchDataResponse issueMatchData;
  /// Data specifying a phrase match.
  final GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse phraseMatchData;
  /// Data specifying sentiment.
  final GoogleCloudContactcenterinsightsV1SentimentDataResponse sentimentData;
  /// Data specifying silence.
  final Map<String, dynamic> silenceData;

  /// Creates a new [GoogleCloudContactcenterinsightsV1CallAnnotationResponse].
  /// [annotationEndBoundary] The boundary in the conversation where the annotation ends, inclusive.
  /// [annotationStartBoundary] The boundary in the conversation where the annotation starts, inclusive.
  /// [channelTag] The channel of the audio where the annotation occurs. For single-channel audio, this field is not populated.
  /// [entityMentionData] Data specifying an entity mention.
  /// [holdData] Data specifying a hold.
  /// [intentMatchData] Data specifying an intent match.
  /// [interruptionData] Data specifying an interruption.
  /// [issueMatchData] Data specifying an issue match.
  /// [phraseMatchData] Data specifying a phrase match.
  /// [sentimentData] Data specifying sentiment.
  /// [silenceData] Data specifying silence.
  GoogleCloudContactcenterinsightsV1CallAnnotationResponse({
    required this.annotationEndBoundary,
    required this.annotationStartBoundary,
    required this.channelTag,
    required this.entityMentionData,
    required this.holdData,
    required this.intentMatchData,
    required this.interruptionData,
    required this.issueMatchData,
    required this.phraseMatchData,
    required this.sentimentData,
    required this.silenceData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationEndBoundary': annotationEndBoundary.toMap(),
      'annotationStartBoundary': annotationStartBoundary.toMap(),
      'channelTag': channelTag,
      'entityMentionData': entityMentionData.toMap(),
      'holdData': holdData,
      'intentMatchData': intentMatchData.toMap(),
      'interruptionData': interruptionData,
      'issueMatchData': issueMatchData.toMap(),
      'phraseMatchData': phraseMatchData.toMap(),
      'sentimentData': sentimentData.toMap(),
      'silenceData': silenceData,
    };
  }

  factory GoogleCloudContactcenterinsightsV1CallAnnotationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1CallAnnotationResponse(
      annotationEndBoundary: GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse.fromMap((map['annotationEndBoundary'] as Map).cast<String, dynamic>()),
      annotationStartBoundary: GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse.fromMap((map['annotationStartBoundary'] as Map).cast<String, dynamic>()),
      channelTag: map['channelTag'] as int,
      entityMentionData: GoogleCloudContactcenterinsightsV1EntityMentionDataResponse.fromMap((map['entityMentionData'] as Map).cast<String, dynamic>()),
      holdData: (map['holdData'] as Map).cast<String, dynamic>(),
      intentMatchData: GoogleCloudContactcenterinsightsV1IntentMatchDataResponse.fromMap((map['intentMatchData'] as Map).cast<String, dynamic>()),
      interruptionData: (map['interruptionData'] as Map).cast<String, dynamic>(),
      issueMatchData: GoogleCloudContactcenterinsightsV1IssueMatchDataResponse.fromMap((map['issueMatchData'] as Map).cast<String, dynamic>()),
      phraseMatchData: GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse.fromMap((map['phraseMatchData'] as Map).cast<String, dynamic>()),
      sentimentData: GoogleCloudContactcenterinsightsV1SentimentDataResponse.fromMap((map['sentimentData'] as Map).cast<String, dynamic>()),
      silenceData: (map['silenceData'] as Map).cast<String, dynamic>(),
    );
  }
}

