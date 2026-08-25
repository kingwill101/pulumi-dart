// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'qa_question_answer_choice.dart';
import 'qa_question_metrics.dart';
import 'qa_question_predefined_question_config.dart';
import 'qa_question_qa_question_data_options.dart';
import 'qa_question_tuning_metadata.dart';

/// {@template pulumi_contactcenterinsights_qa_question_qa_question_args_doc}
/// The set of arguments for QaQuestion.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_qa_question_qa_question_args_doc}
class QaQuestionArgs {
  /// Short, descriptive string, used in the UI where it's not practical
  /// to display the full question body. E.g., "Greeting".
  final pulumi.Input<String?>? abbreviation;
  /// A list of valid answers to the question, which the LLM must choose from.
  /// Structure is documented below.
  final pulumi.Input<List<QaQuestionAnswerChoice>?>? answerChoices;
  /// Instructions describing how to determine the answer.
  final pulumi.Input<String?>? answerInstructions;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// A wrapper representing metrics calculated against a test-set on a LLM that
  /// was fine tuned for this question.
  /// Structure is documented below.
  final pulumi.Input<QaQuestionMetrics?>? metrics;
  /// Defines the order of the question within its parent scorecard revision.
  final pulumi.Input<int?>? order;
  /// Configuration for a predefined question. This field will only be set if the
  /// Question Type is predefined.
  /// Structure is documented below.
  final pulumi.Input<QaQuestionPredefinedQuestionConfig?>? predefinedQuestionConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Options for configuring the data used to generate the QA question.
  /// Structure is documented below.
  final pulumi.Input<QaQuestionQaQuestionDataOptions?>? qaQuestionDataOptions;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> qaScorecard;
  /// Question text. E.g., "Did the agent greet the customer?"
  final pulumi.Input<String?>? questionBody;
  /// The type of question.
  /// Possible values:
  /// CUSTOMIZABLE
  /// PREDEFINED
  final pulumi.Input<String?>? questionType;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> revision;
  /// Questions are tagged for categorization and scoring. Tags can either be:
  /// - Default Tags: These are predefined categories. They are identified by
  /// their string value (e.g., "BUSINESS", "COMPLIANCE", and "CUSTOMER").
  /// - Custom Tags: These are user-defined categories. They are identified by
  /// their full resource name (e.g.,
  /// projects/{project}/locations/{location}/qaQuestionTags/{qa_question_tag}).
  /// Both default and custom tags are used to group questions and to influence
  /// the scoring of each question.
  final pulumi.Input<List<String>?>? tags;
  /// Metadata about the tuning operation for the question. Will only be set if a
  /// scorecard containing this question has been tuned.
  /// Structure is documented below.
  final pulumi.Input<QaQuestionTuningMetadata?>? tuningMetadata;

  /// Creates a new [QaQuestionArgs].
  /// [abbreviation] Short, descriptive string, used in the UI where it's not practical
  /// [answerChoices] A list of valid answers to the question, which the LLM must choose from.
  /// [answerInstructions] Instructions describing how to determine the answer.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [metrics] A wrapper representing metrics calculated against a test-set on a LLM that
  /// [order] Defines the order of the question within its parent scorecard revision.
  /// [predefinedQuestionConfig] Configuration for a predefined question. This field will only be set if the
  /// [project] The ID of the project in which the resource belongs.
  /// [qaQuestionDataOptions] Options for configuring the data used to generate the QA question.
  /// [qaScorecard] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [questionBody] Question text. E.g., "Did the agent greet the customer?"
  /// [questionType] The type of question.
  /// [revision] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [tags] Questions are tagged for categorization and scoring. Tags can either be:
  /// [tuningMetadata] Metadata about the tuning operation for the question. Will only be set if a
  const QaQuestionArgs({
    this.abbreviation,
    this.answerChoices,
    this.answerInstructions,
    this.deletionPolicy,
    required this.location,
    this.metrics,
    this.order,
    this.predefinedQuestionConfig,
    this.project,
    this.qaQuestionDataOptions,
    required this.qaScorecard,
    this.questionBody,
    this.questionType,
    required this.revision,
    this.tags,
    this.tuningMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abbreviation': ?abbreviation,
      'answerChoices': ?pulumi.Input.mapOptionalInputValue<List<QaQuestionAnswerChoice>, List<Map<String, dynamic>>>(answerChoices, (value) => pulumi.Input.encodeList<QaQuestionAnswerChoice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'answerInstructions': ?answerInstructions,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'metrics': ?pulumi.Input.mapOptionalInputValue<QaQuestionMetrics, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'order': ?order,
      'predefinedQuestionConfig': ?pulumi.Input.mapOptionalInputValue<QaQuestionPredefinedQuestionConfig, Map<String, dynamic>>(predefinedQuestionConfig, (value) => value.toMap()),
      'project': ?project,
      'qaQuestionDataOptions': ?pulumi.Input.mapOptionalInputValue<QaQuestionQaQuestionDataOptions, Map<String, dynamic>>(qaQuestionDataOptions, (value) => value.toMap()),
      'qaScorecard': qaScorecard,
      'questionBody': ?questionBody,
      'questionType': ?questionType,
      'revision': revision,
      'tags': ?tags,
      'tuningMetadata': ?pulumi.Input.mapOptionalInputValue<QaQuestionTuningMetadata, Map<String, dynamic>>(tuningMetadata, (value) => value.toMap()),
    };
  }

  factory QaQuestionArgs.fromMap(Map<String, dynamic> map) {
    return QaQuestionArgs(
      abbreviation: (() { final guardedValue = map['abbreviation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      answerChoices: (() { final guardedValue = map['answerChoices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QaQuestionAnswerChoice>(guardedValue, (value) => QaQuestionAnswerChoice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      answerInstructions: (() { final guardedValue = map['answerInstructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QaQuestionMetrics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      predefinedQuestionConfig: (() { final guardedValue = map['predefinedQuestionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QaQuestionPredefinedQuestionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qaQuestionDataOptions: (() { final guardedValue = map['qaQuestionDataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QaQuestionQaQuestionDataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      qaScorecard: pulumi.Input.fromValue(map['qaScorecard'] as String),
      questionBody: (() { final guardedValue = map['questionBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      questionType: (() { final guardedValue = map['questionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tuningMetadata: (() { final guardedValue = map['tuningMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QaQuestionTuningMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
