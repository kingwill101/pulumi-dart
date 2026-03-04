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

  factory GetTrainingPipelineArgs.fromMap(Map<String, dynamic> map) {
    return GetTrainingPipelineArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trainingPipelineId: pulumi.Input.fromValue(
        map['trainingPipelineId'] as String,
      ),
    );
  }
}
