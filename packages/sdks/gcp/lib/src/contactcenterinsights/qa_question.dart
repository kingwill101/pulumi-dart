import 'package:pulumi/pulumi.dart' as pulumi;
import 'qa_question_answer_choice.dart';
import 'qa_question_args.dart';
import 'qa_question_metrics.dart';
import 'qa_question_predefined_question_config.dart';
import 'qa_question_qa_question_data_options.dart';
import 'qa_question_state.dart';
import 'qa_question_tuning_metadata.dart';

/// A single question to be scored by the Insights QA feature.
///
///
///
/// ## Example Usage
///
/// ## Import
///
/// QaQuestion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/qaScorecards/{{qa_scorecard}}/revisions/{{revision}}/qaQuestions/{{name}}`
/// * `{{project}}/{{location}}/{{qa_scorecard}}/{{revision}}/{{name}}`
/// * `{{location}}/{{qa_scorecard}}/{{revision}}/{{name}}`
///
///
/// When using the `pulumi import` command, QaQuestion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/qaQuestion:QaQuestion default projects/{{project}}/locations/{{location}}/qaScorecards/{{qa_scorecard}}/revisions/{{revision}}/qaQuestions/{{name}}
/// $ pulumi import gcp:contactcenterinsights/qaQuestion:QaQuestion default {{project}}/{{location}}/{{qa_scorecard}}/{{revision}}/{{name}}
/// $ pulumi import gcp:contactcenterinsights/qaQuestion:QaQuestion default {{location}}/{{qa_scorecard}}/{{revision}}/{{name}}
/// ```
class QaQuestion extends pulumi.CustomResource {
  /// Short, descriptive string, used in the UI where it's not practical
  /// to display the full question body. E.g., "Greeting".
  late final pulumi.Output<String?> abbreviation;
  /// A list of valid answers to the question, which the LLM must choose from.
  /// Structure is documented below.
  late final pulumi.Output<List<QaQuestionAnswerChoice>?> answerChoices;
  /// Instructions describing how to determine the answer.
  late final pulumi.Output<String?> answerInstructions;
  /// The time at which this question was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// A wrapper representing metrics calculated against a test-set on a LLM that
  /// was fine tuned for this question.
  /// Structure is documented below.
  late final pulumi.Output<QaQuestionMetrics?> metrics;
  /// Identifier. The resource name of the question.
  /// Format:
  /// projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}/revisions/{revision}/qaQuestions/{qa_question}
  late final pulumi.Output<String> name;
  /// Defines the order of the question within its parent scorecard revision.
  late final pulumi.Output<int?> order;
  /// Configuration for a predefined question. This field will only be set if the
  /// Question Type is predefined.
  /// Structure is documented below.
  late final pulumi.Output<QaQuestionPredefinedQuestionConfig?> predefinedQuestionConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Options for configuring the data used to generate the QA question.
  /// Structure is documented below.
  late final pulumi.Output<QaQuestionQaQuestionDataOptions?> qaQuestionDataOptions;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> qaScorecard;
  /// Question text. E.g., "Did the agent greet the customer?"
  late final pulumi.Output<String?> questionBody;
  /// The type of question.
  /// Possible values:
  /// CUSTOMIZABLE
  /// PREDEFINED
  late final pulumi.Output<String?> questionType;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> revision;
  /// Questions are tagged for categorization and scoring. Tags can either be:
  /// - Default Tags: These are predefined categories. They are identified by
  /// their string value (e.g., "BUSINESS", "COMPLIANCE", and "CUSTOMER").
  /// - Custom Tags: These are user-defined categories. They are identified by
  /// their full resource name (e.g.,
  /// projects/{project}/locations/{location}/qaQuestionTags/{qa_question_tag}).
  /// Both default and custom tags are used to group questions and to influence
  /// the scoring of each question.
  late final pulumi.Output<List<String>?> tags;
  /// Metadata about the tuning operation for the question. Will only be set if a
  /// scorecard containing this question has been tuned.
  /// Structure is documented below.
  late final pulumi.Output<QaQuestionTuningMetadata?> tuningMetadata;
  /// The most recent time at which the question was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [QaQuestion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QaQuestion]. {@macro pulumi_contactcenterinsights_qa_question_qa_question_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QaQuestion(
    String name, {
    QaQuestionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/qaQuestion:QaQuestion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    abbreviation = registerOutput<String?>('abbreviation');
    answerChoices = registerOutput<List<QaQuestionAnswerChoice>?>('answerChoices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QaQuestionAnswerChoice>(guardedValue, (value) => QaQuestionAnswerChoice.fromMap((value as Map).cast<String, dynamic>())); });
    answerInstructions = registerOutput<String?>('answerInstructions');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    metrics = registerOutput<QaQuestionMetrics?>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    order = registerOutput<int?>('order');
    predefinedQuestionConfig = registerOutput<QaQuestionPredefinedQuestionConfig?>('predefinedQuestionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionPredefinedQuestionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    qaQuestionDataOptions = registerOutput<QaQuestionQaQuestionDataOptions?>('qaQuestionDataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionQaQuestionDataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qaScorecard = registerOutput<String>('qaScorecard');
    questionBody = registerOutput<String?>('questionBody');
    questionType = registerOutput<String?>('questionType');
    revision = registerOutput<String>('revision');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tuningMetadata = registerOutput<QaQuestionTuningMetadata?>('tuningMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionTuningMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [QaQuestion] resource's state with the given [name] and [id].
  static QaQuestion get(
    String name,
    pulumi.Input<String> id, {
    QaQuestionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return QaQuestion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  QaQuestion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/qaQuestion:QaQuestion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    abbreviation = registerOutput<String?>('abbreviation');
    answerChoices = registerOutput<List<QaQuestionAnswerChoice>?>('answerChoices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QaQuestionAnswerChoice>(guardedValue, (value) => QaQuestionAnswerChoice.fromMap((value as Map).cast<String, dynamic>())); });
    answerInstructions = registerOutput<String?>('answerInstructions');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    metrics = registerOutput<QaQuestionMetrics?>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    order = registerOutput<int?>('order');
    predefinedQuestionConfig = registerOutput<QaQuestionPredefinedQuestionConfig?>('predefinedQuestionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionPredefinedQuestionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    qaQuestionDataOptions = registerOutput<QaQuestionQaQuestionDataOptions?>('qaQuestionDataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionQaQuestionDataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qaScorecard = registerOutput<String>('qaScorecard');
    questionBody = registerOutput<String?>('questionBody');
    questionType = registerOutput<String?>('questionType');
    revision = registerOutput<String>('revision');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tuningMetadata = registerOutput<QaQuestionTuningMetadata?>('tuningMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionTuningMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [QaQuestion] resource.
  QaQuestion.reference(String urn)
    : super(
        'gcp:contactcenterinsights/qaQuestion:QaQuestion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    abbreviation = registerOutput<String?>('abbreviation');
    answerChoices = registerOutput<List<QaQuestionAnswerChoice>?>('answerChoices', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<QaQuestionAnswerChoice>(guardedValue, (value) => QaQuestionAnswerChoice.fromMap((value as Map).cast<String, dynamic>())); });
    answerInstructions = registerOutput<String?>('answerInstructions');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    metrics = registerOutput<QaQuestionMetrics?>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionMetrics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    order = registerOutput<int?>('order');
    predefinedQuestionConfig = registerOutput<QaQuestionPredefinedQuestionConfig?>('predefinedQuestionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionPredefinedQuestionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    qaQuestionDataOptions = registerOutput<QaQuestionQaQuestionDataOptions?>('qaQuestionDataOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionQaQuestionDataOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    qaScorecard = registerOutput<String>('qaScorecard');
    questionBody = registerOutput<String?>('questionBody');
    questionType = registerOutput<String?>('questionType');
    revision = registerOutput<String>('revision');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tuningMetadata = registerOutput<QaQuestionTuningMetadata?>('tuningMetadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return QaQuestionTuningMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
