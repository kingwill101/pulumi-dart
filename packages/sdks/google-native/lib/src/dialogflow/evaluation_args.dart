// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_evaluation_config.dart';

/// {@template pulumi_dialogflow_v2_evaluation_args_doc}
/// The set of arguments for Evaluation.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_evaluation_args_doc}
class EvaluationArgs {
  final pulumi.Input<String> conversationModelId;
  /// Optional. The display name of the model evaluation. At most 64 bytes long.
  final pulumi.Input<String>? displayName;
  /// Optional. The configuration of the evaluation task.
  final pulumi.Input<GoogleCloudDialogflowV2EvaluationConfig>? evaluationConfig;
  final pulumi.Input<String>? location;
  /// The resource name of the evaluation. Format: `projects//conversationModels//evaluations/`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [EvaluationArgs].
  /// [conversationModelId] Required.
  /// [displayName] Optional. The display name of the model evaluation. At most 64 bytes long.
  /// [evaluationConfig] Optional. The configuration of the evaluation task.
  /// [location] Optional.
  /// [name] The resource name of the evaluation. Format: `projects//conversationModels//evaluations/`
  /// [project] Optional.
  EvaluationArgs({
    required pulumi.Output<String> conversationModelId,
    pulumi.Output<String>? displayName,
    pulumi.Output<GoogleCloudDialogflowV2EvaluationConfig>? evaluationConfig,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      conversationModelId = pulumi.Input.asInput<String>(conversationModelId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      evaluationConfig = pulumi.Input.asOptionalInput<GoogleCloudDialogflowV2EvaluationConfig>(evaluationConfig),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationModelId': conversationModelId,
      'displayName': ?displayName,
      'evaluationConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2EvaluationConfig, Map<String, dynamic>>(evaluationConfig, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory EvaluationArgs.fromMap(Map<String, dynamic> map) {
    return EvaluationArgs(
      conversationModelId: pulumi.Output.create<String>(map['conversationModelId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      evaluationConfig: map['evaluationConfig'] == null ? null : pulumi.Output.create<GoogleCloudDialogflowV2EvaluationConfig>(GoogleCloudDialogflowV2EvaluationConfig.fromMap((map['evaluationConfig'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

