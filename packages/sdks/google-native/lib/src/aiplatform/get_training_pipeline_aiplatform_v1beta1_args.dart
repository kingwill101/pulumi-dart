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
    required this.location,
    this.project,
    required this.trainingPipelineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'trainingPipelineId': trainingPipelineId,
    };
  }

  factory GetTrainingPipelineAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTrainingPipelineAiplatformV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingPipelineId: pulumi.Input.fromValue(map['trainingPipelineId'] as String),
    );
  }
}

