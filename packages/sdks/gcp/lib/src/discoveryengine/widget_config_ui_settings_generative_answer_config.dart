// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WidgetConfigUiSettingsGenerativeAnswerConfig {
  /// Whether generated answer contains suggested related questions.
  final pulumi.Input<bool>? disableRelatedQuestions;
  /// Specifies whether to filter out queries that are adversarial.
  final pulumi.Input<bool>? ignoreAdversarialQuery;
  /// Specifies whether to filter out queries that are not relevant to the content.
  final pulumi.Input<bool>? ignoreLowRelevantContent;
  /// Specifies whether to filter out queries that are not answer-seeking.
  /// The default value is `false`. No answer is returned if the search query
  /// is classified as a non-answer seeking query.
  /// If this field is set to `true`, we skip generating answers for
  /// non-answer seeking queries and return fallback messages instead.
  final pulumi.Input<bool>? ignoreNonAnswerSeekingQuery;
  /// Source of image returned in the answer.
  /// Possible values are: `ALL_AVAILABLE_SOURCES`, `CORPUS_IMAGE_ONLY`, `FIGURE_GENERATION_ONLY`.
  final pulumi.Input<String>? imageSource;
  /// Language code for Summary. Use language tags defined by
  /// [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Note: This
  /// is an experimental feature.
  final pulumi.Input<String>? languageCode;
  /// Max rephrase steps. The max number is 5 steps. If not set or
  /// set to < 1, it will be set to 1 by default.
  final pulumi.Input<int>? maxRephraseSteps;
  /// Text at the beginning of the prompt that instructs the model that generates the answer.
  final pulumi.Input<String>? modelPromptPreamble;
  /// The model version used to generate the answer.
  final pulumi.Input<String>? modelVersion;
  /// The number of top results to generate the answer from. Up to 10.
  final pulumi.Input<int>? resultCount;

  /// Creates a new [WidgetConfigUiSettingsGenerativeAnswerConfig].
  /// [disableRelatedQuestions] Whether generated answer contains suggested related questions.
  /// [ignoreAdversarialQuery] Specifies whether to filter out queries that are adversarial.
  /// [ignoreLowRelevantContent] Specifies whether to filter out queries that are not relevant to the content.
  /// [ignoreNonAnswerSeekingQuery] Specifies whether to filter out queries that are not answer-seeking.
  /// [imageSource] Source of image returned in the answer.
  /// [languageCode] Language code for Summary. Use language tags defined by
  /// [maxRephraseSteps] Max rephrase steps. The max number is 5 steps. If not set or
  /// [modelPromptPreamble] Text at the beginning of the prompt that instructs the model that generates the answer.
  /// [modelVersion] The model version used to generate the answer.
  /// [resultCount] The number of top results to generate the answer from. Up to 10.
  WidgetConfigUiSettingsGenerativeAnswerConfig({
    this.disableRelatedQuestions,
    this.ignoreAdversarialQuery,
    this.ignoreLowRelevantContent,
    this.ignoreNonAnswerSeekingQuery,
    this.imageSource,
    this.languageCode,
    this.maxRephraseSteps,
    this.modelPromptPreamble,
    this.modelVersion,
    this.resultCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableRelatedQuestions': ?disableRelatedQuestions,
      'ignoreAdversarialQuery': ?ignoreAdversarialQuery,
      'ignoreLowRelevantContent': ?ignoreLowRelevantContent,
      'ignoreNonAnswerSeekingQuery': ?ignoreNonAnswerSeekingQuery,
      'imageSource': ?imageSource,
      'languageCode': ?languageCode,
      'maxRephraseSteps': ?maxRephraseSteps,
      'modelPromptPreamble': ?modelPromptPreamble,
      'modelVersion': ?modelVersion,
      'resultCount': ?resultCount,
    };
  }

  factory WidgetConfigUiSettingsGenerativeAnswerConfig.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiSettingsGenerativeAnswerConfig(
      disableRelatedQuestions: map['disableRelatedQuestions'] == null ? null : (map['disableRelatedQuestions']! as bool).input(),
      ignoreAdversarialQuery: map['ignoreAdversarialQuery'] == null ? null : (map['ignoreAdversarialQuery']! as bool).input(),
      ignoreLowRelevantContent: map['ignoreLowRelevantContent'] == null ? null : (map['ignoreLowRelevantContent']! as bool).input(),
      ignoreNonAnswerSeekingQuery: map['ignoreNonAnswerSeekingQuery'] == null ? null : (map['ignoreNonAnswerSeekingQuery']! as bool).input(),
      imageSource: map['imageSource'] == null ? null : (map['imageSource']! as String).input(),
      languageCode: map['languageCode'] == null ? null : (map['languageCode']! as String).input(),
      maxRephraseSteps: map['maxRephraseSteps'] == null ? null : (map['maxRephraseSteps']! as int).input(),
      modelPromptPreamble: map['modelPromptPreamble'] == null ? null : (map['modelPromptPreamble']! as String).input(),
      modelVersion: map['modelVersion'] == null ? null : (map['modelVersion']! as String).input(),
      resultCount: map['resultCount'] == null ? null : (map['resultCount']! as int).input(),
    );
  }
}

