// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_annotator_selector_summarization_config.dart';

/// Selector of all available annotators and phrase matchers to run.
class GoogleCloudContactcenterinsightsV1AnnotatorSelector {
  /// The issue model to run. If not provided, the most recently deployed topic model will be used. The provided issue model will only be used for inference if the issue model is deployed and if run_issue_model_annotator is set to true. If more than one issue model is provided, only the first provided issue model will be used for inference.
  final pulumi.Input<List<String>>? issueModels;
  /// The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If inactive phrase matchers are provided, they will not be used. Phrase matchers will be run only if run_phrase_matcher_annotator is set to true. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  final pulumi.Input<List<String>>? phraseMatchers;
  /// Whether to run the entity annotator.
  final pulumi.Input<bool>? runEntityAnnotator;
  /// Whether to run the intent annotator.
  final pulumi.Input<bool>? runIntentAnnotator;
  /// Whether to run the interruption annotator.
  final pulumi.Input<bool>? runInterruptionAnnotator;
  /// Whether to run the issue model annotator. A model should have already been deployed for this to take effect.
  final pulumi.Input<bool>? runIssueModelAnnotator;
  /// Whether to run the active phrase matcher annotator(s).
  final pulumi.Input<bool>? runPhraseMatcherAnnotator;
  /// Whether to run the sentiment annotator.
  final pulumi.Input<bool>? runSentimentAnnotator;
  /// Whether to run the silence annotator.
  final pulumi.Input<bool>? runSilenceAnnotator;
  /// Whether to run the summarization annotator.
  final pulumi.Input<bool>? runSummarizationAnnotator;
  /// Configuration for the summarization annotator.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig>? summarizationConfig;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnnotatorSelector].
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
  GoogleCloudContactcenterinsightsV1AnnotatorSelector({
    this.issueModels,
    this.phraseMatchers,
    this.runEntityAnnotator,
    this.runIntentAnnotator,
    this.runInterruptionAnnotator,
    this.runIssueModelAnnotator,
    this.runPhraseMatcherAnnotator,
    this.runSentimentAnnotator,
    this.runSilenceAnnotator,
    this.runSummarizationAnnotator,
    this.summarizationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueModels': ?issueModels,
      'phraseMatchers': ?phraseMatchers,
      'runEntityAnnotator': ?runEntityAnnotator,
      'runIntentAnnotator': ?runIntentAnnotator,
      'runInterruptionAnnotator': ?runInterruptionAnnotator,
      'runIssueModelAnnotator': ?runIssueModelAnnotator,
      'runPhraseMatcherAnnotator': ?runPhraseMatcherAnnotator,
      'runSentimentAnnotator': ?runSentimentAnnotator,
      'runSilenceAnnotator': ?runSilenceAnnotator,
      'runSummarizationAnnotator': ?runSummarizationAnnotator,
      'summarizationConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig, Map<String, dynamic>>(summarizationConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContactcenterinsightsV1AnnotatorSelector.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnnotatorSelector(
      issueModels: map['issueModels'] == null ? null : ((map['issueModels']! as List).cast<String>()).input(),
      phraseMatchers: map['phraseMatchers'] == null ? null : ((map['phraseMatchers']! as List).cast<String>()).input(),
      runEntityAnnotator: map['runEntityAnnotator'] == null ? null : (map['runEntityAnnotator']! as bool).input(),
      runIntentAnnotator: map['runIntentAnnotator'] == null ? null : (map['runIntentAnnotator']! as bool).input(),
      runInterruptionAnnotator: map['runInterruptionAnnotator'] == null ? null : (map['runInterruptionAnnotator']! as bool).input(),
      runIssueModelAnnotator: map['runIssueModelAnnotator'] == null ? null : (map['runIssueModelAnnotator']! as bool).input(),
      runPhraseMatcherAnnotator: map['runPhraseMatcherAnnotator'] == null ? null : (map['runPhraseMatcherAnnotator']! as bool).input(),
      runSentimentAnnotator: map['runSentimentAnnotator'] == null ? null : (map['runSentimentAnnotator']! as bool).input(),
      runSilenceAnnotator: map['runSilenceAnnotator'] == null ? null : (map['runSilenceAnnotator']! as bool).input(),
      runSummarizationAnnotator: map['runSummarizationAnnotator'] == null ? null : (map['runSummarizationAnnotator']! as bool).input(),
      summarizationConfig: map['summarizationConfig'] == null ? null : (GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig.fromMap((map['summarizationConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

