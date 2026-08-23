// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_annotator_selector_summarization_config_response.dart';

/// Selector of all available annotators and phrase matchers to run.
class GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse {
  /// The issue model to run. If not provided, the most recently deployed topic model will be used. The provided issue model will only be used for inference if the issue model is deployed and if run_issue_model_annotator is set to true. If more than one issue model is provided, only the first provided issue model will be used for inference.
  final pulumi.Input<List<String>> issueModels;
  /// The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If inactive phrase matchers are provided, they will not be used. Phrase matchers will be run only if run_phrase_matcher_annotator is set to true. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  final pulumi.Input<List<String>> phraseMatchers;
  /// Whether to run the entity annotator.
  final pulumi.Input<bool> runEntityAnnotator;
  /// Whether to run the intent annotator.
  final pulumi.Input<bool> runIntentAnnotator;
  /// Whether to run the interruption annotator.
  final pulumi.Input<bool> runInterruptionAnnotator;
  /// Whether to run the issue model annotator. A model should have already been deployed for this to take effect.
  final pulumi.Input<bool> runIssueModelAnnotator;
  /// Whether to run the active phrase matcher annotator(s).
  final pulumi.Input<bool> runPhraseMatcherAnnotator;
  /// Whether to run the sentiment annotator.
  final pulumi.Input<bool> runSentimentAnnotator;
  /// Whether to run the silence annotator.
  final pulumi.Input<bool> runSilenceAnnotator;
  /// Whether to run the summarization annotator.
  final pulumi.Input<bool> runSummarizationAnnotator;
  /// Configuration for the summarization annotator.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse> summarizationConfig;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse].
  /// [issueModels] The issue model to run. If not provided, the most recently deployed topic model will be used. The provided issue model will only be used for inference if the issue model is deployed and if run_issue_model_annotator is set to true. If more than one issue model is provided, only the first provided issue model will be used for inference.
  /// [phraseMatchers] The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If inactive phrase matchers are provided, they will not be used. Phrase matchers will be run only if run_phrase_matcher_annotator is set to true. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  /// [runEntityAnnotator] Whether to run the entity annotator.
  /// [runIntentAnnotator] Whether to run the intent annotator.
  /// [runInterruptionAnnotator] Whether to run the interruption annotator.
  /// [runIssueModelAnnotator] Whether to run the issue model annotator. A model should have already been deployed for this to take effect.
  /// [runPhraseMatcherAnnotator] Whether to run the active phrase matcher annotator(s).
  /// [runSentimentAnnotator] Whether to run the sentiment annotator.
  /// [runSilenceAnnotator] Whether to run the silence annotator.
  /// [runSummarizationAnnotator] Whether to run the summarization annotator.
  /// [summarizationConfig] Configuration for the summarization annotator.
  const GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse({
    required this.issueModels,
    required this.phraseMatchers,
    required this.runEntityAnnotator,
    required this.runIntentAnnotator,
    required this.runInterruptionAnnotator,
    required this.runIssueModelAnnotator,
    required this.runPhraseMatcherAnnotator,
    required this.runSentimentAnnotator,
    required this.runSilenceAnnotator,
    required this.runSummarizationAnnotator,
    required this.summarizationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueModels': issueModels,
      'phraseMatchers': phraseMatchers,
      'runEntityAnnotator': runEntityAnnotator,
      'runIntentAnnotator': runIntentAnnotator,
      'runInterruptionAnnotator': runInterruptionAnnotator,
      'runIssueModelAnnotator': runIssueModelAnnotator,
      'runPhraseMatcherAnnotator': runPhraseMatcherAnnotator,
      'runSentimentAnnotator': runSentimentAnnotator,
      'runSilenceAnnotator': runSilenceAnnotator,
      'runSummarizationAnnotator': runSummarizationAnnotator,
      'summarizationConfig': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse, Map<String, dynamic>>(summarizationConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnnotatorSelectorResponse(
      issueModels: pulumi.Input.fromValue((map['issueModels'] as List).cast<String>()),
      phraseMatchers: pulumi.Input.fromValue((map['phraseMatchers'] as List).cast<String>()),
      runEntityAnnotator: pulumi.Input.fromValue(map['runEntityAnnotator'] as bool),
      runIntentAnnotator: pulumi.Input.fromValue(map['runIntentAnnotator'] as bool),
      runInterruptionAnnotator: pulumi.Input.fromValue(map['runInterruptionAnnotator'] as bool),
      runIssueModelAnnotator: pulumi.Input.fromValue(map['runIssueModelAnnotator'] as bool),
      runPhraseMatcherAnnotator: pulumi.Input.fromValue(map['runPhraseMatcherAnnotator'] as bool),
      runSentimentAnnotator: pulumi.Input.fromValue(map['runSentimentAnnotator'] as bool),
      runSilenceAnnotator: pulumi.Input.fromValue(map['runSilenceAnnotator'] as bool),
      runSummarizationAnnotator: pulumi.Input.fromValue(map['runSummarizationAnnotator'] as bool),
      summarizationConfig: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse.fromMap((map['summarizationConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
