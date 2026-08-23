// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_hyperparameter_tuning_job_aiplatform_v1beta1_args_doc}
/// Arguments for getHyperparameterTuningJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_hyperparameter_tuning_job_aiplatform_v1beta1_args_doc}
class GetHyperparameterTuningJobAiplatformV1beta1Args {
  final pulumi.Input<String> hyperparameterTuningJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHyperparameterTuningJobAiplatformV1beta1Args].
  /// [hyperparameterTuningJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetHyperparameterTuningJobAiplatformV1beta1Args({
    required this.hyperparameterTuningJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hyperparameterTuningJobId': hyperparameterTuningJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetHyperparameterTuningJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetHyperparameterTuningJobAiplatformV1beta1Args(
      hyperparameterTuningJobId: pulumi.Input.fromValue(map['hyperparameterTuningJobId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
