// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_rule_annotator_selector_qa_config.dart';
import 'analysis_rule_annotator_selector_summarization_config.dart';

class AnalysisRuleAnnotatorSelector {
  /// The issue model to run. If not provided, the most recently deployed topic
  /// model will be used. The provided issue model will only be used for
  /// inference if the issue model is deployed and if run_issue_model_annotator
  /// is set to true. If more than one issue model is provided, only the first
  /// provided issue model will be used for inference.
  final pulumi.Input<List<String>>? issueModels;
  /// The list of phrase matchers to run. If not provided, all active phrase
  /// matchers will be used. If inactive phrase matchers are provided, they will
  /// not be used. Phrase matchers will be run only if
  /// run_phrase_matcher_annotator is set to true. Format:
  /// projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  final pulumi.Input<List<String>>? phraseMatchers;
  /// Configuration for the QA feature.
  /// Structure is documented below.
  final pulumi.Input<AnalysisRuleAnnotatorSelectorQaConfig>? qaConfig;
  /// Whether to run the entity annotator.
  final pulumi.Input<bool>? runEntityAnnotator;
  /// Whether to run the intent annotator.
  final pulumi.Input<bool>? runIntentAnnotator;
  /// Whether to run the interruption annotator.
  final pulumi.Input<bool>? runInterruptionAnnotator;
  /// Whether to run the issue model annotator. A model should have already been
  /// deployed for this to take effect.
  final pulumi.Input<bool>? runIssueModelAnnotator;
  /// Whether to run the active phrase matcher annotator(s).
  final pulumi.Input<bool>? runPhraseMatcherAnnotator;
  /// Whether to run the QA annotator.
  final pulumi.Input<bool>? runQaAnnotator;
  /// Whether to run the sentiment annotator.
  final pulumi.Input<bool>? runSentimentAnnotator;
  /// Whether to run the silence annotator.
  final pulumi.Input<bool>? runSilenceAnnotator;
  /// Whether to run the summarization annotator.
  final pulumi.Input<bool>? runSummarizationAnnotator;
  /// Configuration for summarization.
  /// Structure is documented below.
  final pulumi.Input<AnalysisRuleAnnotatorSelectorSummarizationConfig>? summarizationConfig;

  /// Creates a new [AnalysisRuleAnnotatorSelector].
  /// [issueModels] The issue model to run. If not provided, the most recently deployed topic
  /// [phraseMatchers] The list of phrase matchers to run. If not provided, all active phrase
  /// [qaConfig] Configuration for the QA feature.
  /// [runEntityAnnotator] Whether to run the entity annotator.
  /// [runIntentAnnotator] Whether to run the intent annotator.
  /// [runInterruptionAnnotator] Whether to run the interruption annotator.
  /// [runIssueModelAnnotator] Whether to run the issue model annotator. A model should have already been
  /// [runPhraseMatcherAnnotator] Whether to run the active phrase matcher annotator(s).
  /// [runQaAnnotator] Whether to run the QA annotator.
  /// [runSentimentAnnotator] Whether to run the sentiment annotator.
  /// [runSilenceAnnotator] Whether to run the silence annotator.
  /// [runSummarizationAnnotator] Whether to run the summarization annotator.
  /// [summarizationConfig] Configuration for summarization.
  const AnalysisRuleAnnotatorSelector({
    this.issueModels,
    this.phraseMatchers,
    this.qaConfig,
    this.runEntityAnnotator,
    this.runIntentAnnotator,
    this.runInterruptionAnnotator,
    this.runIssueModelAnnotator,
    this.runPhraseMatcherAnnotator,
    this.runQaAnnotator,
    this.runSentimentAnnotator,
    this.runSilenceAnnotator,
    this.runSummarizationAnnotator,
    this.summarizationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueModels': ?issueModels,
      'phraseMatchers': ?phraseMatchers,
      'qaConfig': ?pulumi.Input.mapOptionalInputValue<AnalysisRuleAnnotatorSelectorQaConfig, Map<String, dynamic>>(qaConfig, (value) => value.toMap()),
      'runEntityAnnotator': ?runEntityAnnotator,
      'runIntentAnnotator': ?runIntentAnnotator,
      'runInterruptionAnnotator': ?runInterruptionAnnotator,
      'runIssueModelAnnotator': ?runIssueModelAnnotator,
      'runPhraseMatcherAnnotator': ?runPhraseMatcherAnnotator,
      'runQaAnnotator': ?runQaAnnotator,
      'runSentimentAnnotator': ?runSentimentAnnotator,
      'runSilenceAnnotator': ?runSilenceAnnotator,
      'runSummarizationAnnotator': ?runSummarizationAnnotator,
      'summarizationConfig': ?pulumi.Input.mapOptionalInputValue<AnalysisRuleAnnotatorSelectorSummarizationConfig, Map<String, dynamic>>(summarizationConfig, (value) => value.toMap()),
    };
  }

  factory AnalysisRuleAnnotatorSelector.fromMap(Map<String, dynamic> map) {
    return AnalysisRuleAnnotatorSelector(
      issueModels: (() { final guardedValue = map['issueModels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      phraseMatchers: (() { final guardedValue = map['phraseMatchers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      qaConfig: (() { final guardedValue = map['qaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalysisRuleAnnotatorSelectorQaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runEntityAnnotator: (() { final guardedValue = map['runEntityAnnotator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runIntentAnnotator: (() { final guardedValue = map['runIntentAnnotator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runInterruptionAnnotator: (() { final guardedValue = map['runInterruptionAnnotator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runIssueModelAnnotator: (() { final guardedValue = map['runIssueModelAnnotator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runPhraseMatcherAnnotator: (() { final guardedValue = map['runPhraseMatcherAnnotator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runQaAnnotator: (() { final guardedValue = map['runQaAnnotator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runSentimentAnnotator: (() { final guardedValue = map['runSentimentAnnotator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runSilenceAnnotator: (() { final guardedValue = map['runSilenceAnnotator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runSummarizationAnnotator: (() { final guardedValue = map['runSummarizationAnnotator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      summarizationConfig: (() { final guardedValue = map['summarizationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalysisRuleAnnotatorSelectorSummarizationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

