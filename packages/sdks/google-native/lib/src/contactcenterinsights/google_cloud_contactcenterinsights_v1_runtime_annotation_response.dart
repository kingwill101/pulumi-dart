// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_annotation_boundary_response.dart';
import 'google_cloud_contactcenterinsights_v1_answer_feedback_response.dart';
import 'google_cloud_contactcenterinsights_v1_article_suggestion_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_conversation_summarization_suggestion_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_dialogflow_interaction_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_faq_answer_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_smart_compose_suggestion_data_response.dart';
import 'google_cloud_contactcenterinsights_v1_smart_reply_data_response.dart';

/// An annotation that was generated during the customer and agent interaction.
class GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse {
  /// The unique identifier of the annotation. Format: projects/{project}/locations/{location}/conversationDatasets/{dataset}/conversationDataItems/{data_item}/conversationAnnotations/{annotation}
  final pulumi.Input<String> annotationId;
  /// The feedback that the customer has about the answer in `data`.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse> answerFeedback;
  /// Agent Assist Article Suggestion data.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse> articleSuggestion;
  /// Conversation summarization suggestion data.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse> conversationSummarizationSuggestion;
  /// The time at which this annotation was created.
  final pulumi.Input<String> createTime;
  /// Dialogflow interaction data.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse> dialogflowInteraction;
  /// The boundary in the conversation where the annotation ends, inclusive.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse> endBoundary;
  /// Agent Assist FAQ answer data.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse> faqAnswer;
  /// Agent Assist Smart Compose suggestion data.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse> smartComposeSuggestion;
  /// Agent Assist Smart Reply data.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1SmartReplyDataResponse> smartReply;
  /// The boundary in the conversation where the annotation starts, inclusive.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse> startBoundary;

  /// Creates a new [GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse].
  /// [annotationId] The unique identifier of the annotation. Format: projects/{project}/locations/{location}/conversationDatasets/{dataset}/conversationDataItems/{data_item}/conversationAnnotations/{annotation}
  /// [answerFeedback] The feedback that the customer has about the answer in `data`.
  /// [articleSuggestion] Agent Assist Article Suggestion data.
  /// [conversationSummarizationSuggestion] Conversation summarization suggestion data.
  /// [createTime] The time at which this annotation was created.
  /// [dialogflowInteraction] Dialogflow interaction data.
  /// [endBoundary] The boundary in the conversation where the annotation ends, inclusive.
  /// [faqAnswer] Agent Assist FAQ answer data.
  /// [smartComposeSuggestion] Agent Assist Smart Compose suggestion data.
  /// [smartReply] Agent Assist Smart Reply data.
  /// [startBoundary] The boundary in the conversation where the annotation starts, inclusive.
  const GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse({
    required this.annotationId,
    required this.answerFeedback,
    required this.articleSuggestion,
    required this.conversationSummarizationSuggestion,
    required this.createTime,
    required this.dialogflowInteraction,
    required this.endBoundary,
    required this.faqAnswer,
    required this.smartComposeSuggestion,
    required this.smartReply,
    required this.startBoundary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationId': annotationId,
      'answerFeedback': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse, Map<String, dynamic>>(answerFeedback, (value) => value.toMap()),
      'articleSuggestion': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse, Map<String, dynamic>>(articleSuggestion, (value) => value.toMap()),
      'conversationSummarizationSuggestion': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse, Map<String, dynamic>>(conversationSummarizationSuggestion, (value) => value.toMap()),
      'createTime': createTime,
      'dialogflowInteraction': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse, Map<String, dynamic>>(dialogflowInteraction, (value) => value.toMap()),
      'endBoundary': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse, Map<String, dynamic>>(endBoundary, (value) => value.toMap()),
      'faqAnswer': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse, Map<String, dynamic>>(faqAnswer, (value) => value.toMap()),
      'smartComposeSuggestion': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse, Map<String, dynamic>>(smartComposeSuggestion, (value) => value.toMap()),
      'smartReply': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1SmartReplyDataResponse, Map<String, dynamic>>(smartReply, (value) => value.toMap()),
      'startBoundary': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse, Map<String, dynamic>>(startBoundary, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1RuntimeAnnotationResponse(
      annotationId: pulumi.Input.fromValue(map['annotationId'] as String),
      answerFeedback: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1AnswerFeedbackResponse.fromMap((map['answerFeedback']! as Map).cast<String, dynamic>())),
      articleSuggestion: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1ArticleSuggestionDataResponse.fromMap((map['articleSuggestion']! as Map).cast<String, dynamic>())),
      conversationSummarizationSuggestion: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionDataResponse.fromMap((map['conversationSummarizationSuggestion']! as Map).cast<String, dynamic>())),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dialogflowInteraction: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1DialogflowInteractionDataResponse.fromMap((map['dialogflowInteraction']! as Map).cast<String, dynamic>())),
      endBoundary: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse.fromMap((map['endBoundary']! as Map).cast<String, dynamic>())),
      faqAnswer: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1FaqAnswerDataResponse.fromMap((map['faqAnswer']! as Map).cast<String, dynamic>())),
      smartComposeSuggestion: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1SmartComposeSuggestionDataResponse.fromMap((map['smartComposeSuggestion']! as Map).cast<String, dynamic>())),
      smartReply: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1SmartReplyDataResponse.fromMap((map['smartReply']! as Map).cast<String, dynamic>())),
      startBoundary: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1AnnotationBoundaryResponse.fromMap((map['startBoundary']! as Map).cast<String, dynamic>())),
    );
  }
}

