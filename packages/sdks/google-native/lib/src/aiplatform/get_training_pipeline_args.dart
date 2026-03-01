// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_training_pipeline_args_doc}
/// Arguments for getTrainingPipeline.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_training_pipeline_args_doc}
class GetTrainingPipelineArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> trainingPipelineId;

  /// Creates a new [GetTrainingPipelineArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [trainingPipelineId] Required.
  GetTrainingPipelineArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> trainingPipelineId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      trainingPipelineId = pulumi.Input.asInput<String>(trainingPipelineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'trainingPipelineId': trainingPipelineId,
    };
  }

  factory GetTrainingPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetTrainingPipelineArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      trainingPipelineId: pulumi.Output.create<String>(map['trainingPipelineId'] as String),
    );
  }
}

