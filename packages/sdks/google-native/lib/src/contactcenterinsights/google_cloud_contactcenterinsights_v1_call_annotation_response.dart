// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_annotation_boundary_response.dart';
import 'google_cloud_contactcenterinsights_v1_entity_mention_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_intent_match_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_issue_match_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_phrase_match_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_sentiment_data_response.dart';

/// A piece of metadata that applies to a window of a call.
class GoogleCloudContactcenterinsightsV1CallAnnotationResponse {
  /// The boundary in the conversation where the annotation ends, inclusive.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse> annotationEndBoundary;
  /// The boundary in the conversation where the annotation starts, inclusive.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse> annotationStartBoundary;
  /// The channel of the audio where the annotation occurs. For single-channel audio, this field is not populated.
  final pulumi.Input<int> channelTag;
  /// Data specifying an entity mention.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1EntityMentionDataResponse> entityMentionData;
  /// Data specifying a hold.
  final pulumi.Input<Map<String, dynamic>> holdData;
  /// Data specifying an intent match.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1IntentMatchDataResponse> intentMatchData;
  /// Data specifying an interruption.
  final pulumi.Input<Map<String, dynamic>> interruptionData;
  /// Data specifying an issue match.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1IssueMatchDataResponse> issueMatchData;
  /// Data specifying a phrase match.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse> phraseMatchData;
  /// Data specifying sentiment.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1SentimentDataResponse> sentimentData;
  /// Data specifying silence.
  final pulumi.Input<Map<String, dynamic>> silenceData;

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
      'annotationEndBoundary': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse, Map<String, dynamic>>(annotationEndBoundary, (value) => value.toMap()),
      'annotationStartBoundary': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse, Map<String, dynamic>>(annotationStartBoundary, (value) => value.toMap()),
      'channelTag': channelTag,
      'entityMentionData': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1EntityMentionDataResponse, Map<String, dynamic>>(entityMentionData, (value) => value.toMap()),
      'holdData': holdData,
      'intentMatchData': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1IntentMatchDataResponse, Map<String, dynamic>>(intentMatchData, (value) => value.toMap()),
      'interruptionData': interruptionData,
      'issueMatchData': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1IssueMatchDataResponse, Map<String, dynamic>>(issueMatchData, (value) => value.toMap()),
      'phraseMatchData': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse, Map<String, dynamic>>(phraseMatchData, (value) => value.toMap()),
      'sentimentData': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1SentimentDataResponse, Map<String, dynamic>>(sentimentData, (value) => value.toMap()),
      'silenceData': silenceData,
    };
  }

  factory GoogleCloudContactcenterinsightsV1CallAnnotationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1CallAnnotationResponse(
      annotationEndBoundary: (GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse.fromMap((map['annotationEndBoundary'] as Map).cast<String, dynamic>())).input(),
      annotationStartBoundary: (GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse.fromMap((map['annotationStartBoundary'] as Map).cast<String, dynamic>())).input(),
      channelTag: (map['channelTag'] as int).input(),
      entityMentionData: (GoogleCloudContactcenterinsightsV1EntityMentionDataResponse.fromMap((map['entityMentionData'] as Map).cast<String, dynamic>())).input(),
      holdData: ((map['holdData'] as Map).cast<String, dynamic>()).input(),
      intentMatchData: (GoogleCloudContactcenterinsightsV1IntentMatchDataResponse.fromMap((map['intentMatchData'] as Map).cast<String, dynamic>())).input(),
      interruptionData: ((map['interruptionData'] as Map).cast<String, dynamic>()).input(),
      issueMatchData: (GoogleCloudContactcenterinsightsV1IssueMatchDataResponse.fromMap((map['issueMatchData'] as Map).cast<String, dynamic>())).input(),
      phraseMatchData: (GoogleCloudContactcenterinsightsV1PhraseMatchDataResponse.fromMap((map['phraseMatchData'] as Map).cast<String, dynamic>())).input(),
      sentimentData: (GoogleCloudContactcenterinsightsV1SentimentDataResponse.fromMap((map['sentimentData'] as Map).cast<String, dynamic>())).input(),
      silenceData: ((map['silenceData'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

