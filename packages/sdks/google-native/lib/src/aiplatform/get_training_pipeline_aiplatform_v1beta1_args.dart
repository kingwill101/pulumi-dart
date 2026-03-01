// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_training_pipeline_aiplatform_v1beta1_args_doc}
/// Arguments for getTrainingPipeline.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_training_pipeline_aiplatform_v1beta1_args_doc}
class GetTrainingPipelineAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> trainingPipelineId;

  /// Creates a new [GetTrainingPipelineAiplatformV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [trainingPipelineId] Required.
  GetTrainingPipelineAiplatformV1beta1Args({
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

  factory GetTrainingPipelineAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTrainingPipelineAiplatformV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      trainingPipelineId: pulumi.Output.create<String>(map['trainingPipelineId'] as String),
    );
  }
}

