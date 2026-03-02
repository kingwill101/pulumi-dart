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
    required this.conversationModelId,
    this.displayName,
    this.evaluationConfig,
    this.location,
    this.name,
    this.project,
  });

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
      conversationModelId: (map['conversationModelId'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      evaluationConfig: map['evaluationConfig'] == null ? null : (GoogleCloudDialogflowV2EvaluationConfig.fromMap((map['evaluationConfig'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

