// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_call_annotation_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_level_sentiment_response.dart';
import 'google_cloud_contactcenterinsights_v1_issue_model_result_response.dart';

/// Call-specific metadata created during analysis.
class GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse {
  /// A list of call annotations that apply to this call.
  final pulumi.Input<
    List<GoogleCloudContactcenterinsightsV1CallAnnotationResponse>
  >
  annotations;

  /// All the entities in the call.
  final pulumi.Input<Map<String, String>> entities;

  /// All the matched intents in the call.
  final pulumi.Input<Map<String, String>> intents;

  /// Overall conversation-level issue modeling result.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1IssueModelResultResponse>
  issueModelResult;

  /// All the matched phrase matchers in the call.
  final pulumi.Input<Map<String, String>> phraseMatchers;

  /// Overall conversation-level sentiment for each channel of the call.
  final pulumi.Input<
    List<GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse>
  >
  sentiments;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse].
  /// [annotations] A list of call annotations that apply to this call.
  /// [entities] All the entities in the call.
  /// [intents] All the matched intents in the call.
  /// [issueModelResult] Overall conversation-level issue modeling result.
  /// [phraseMatchers] All the matched phrase matchers in the call.
  /// [sentiments] Overall conversation-level sentiment for each channel of the call.
  GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse({
    required this.annotations,
    required this.entities,
    required this.intents,
    required this.issueModelResult,
    required this.phraseMatchers,
    required this.sentiments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations':
          pulumi.Input.mapInputValue<
            List<GoogleCloudContactcenterinsightsV1CallAnnotationResponse>,
            List<Map<String, dynamic>>
          >(
            annotations,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudContactcenterinsightsV1CallAnnotationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'entities': entities,
      'intents': intents,
      'issueModelResult':
          pulumi.Input.mapInputValue<
            GoogleCloudContactcenterinsightsV1IssueModelResultResponse,
            Map<String, dynamic>
          >(issueModelResult, (value) => value.toMap()),
      'phraseMatchers': phraseMatchers,
      'sentiments':
          pulumi.Input.mapInputValue<
            List<
              GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse
            >,
            List<Map<String, dynamic>>
          >(
            sentiments,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadataResponse(
      annotations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudContactcenterinsightsV1CallAnnotationResponse
        >(
          map['annotations']!,
          (value) =>
              GoogleCloudContactcenterinsightsV1CallAnnotationResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      entities: pulumi.Input.fromValue(
        (map['entities'] as Map).cast<String, String>(),
      ),
      intents: pulumi.Input.fromValue(
        (map['intents'] as Map).cast<String, String>(),
      ),
      issueModelResult: pulumi.Input.fromValue(
        GoogleCloudContactcenterinsightsV1IssueModelResultResponse.fromMap(
          (map['issueModelResult']! as Map).cast<String, dynamic>(),
        ),
      ),
      phraseMatchers: pulumi.Input.fromValue(
        (map['phraseMatchers'] as Map).cast<String, String>(),
      ),
      sentiments: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse
        >(
          map['sentiments']!,
          (value) =>
              GoogleCloudContactcenterinsightsV1ConversationLevelSentimentResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
