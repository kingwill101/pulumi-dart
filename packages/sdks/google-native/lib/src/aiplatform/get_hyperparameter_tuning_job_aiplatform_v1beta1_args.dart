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
  GetHyperparameterTuningJobAiplatformV1beta1Args({
    required pulumi.Output<String> hyperparameterTuningJobId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      hyperparameterTuningJobId = pulumi.Input.asInput<String>(hyperparameterTuningJobId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hyperparameterTuningJobId': hyperparameterTuningJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetHyperparameterTuningJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetHyperparameterTuningJobAiplatformV1beta1Args(
      hyperparameterTuningJobId: pulumi.Output.create<String>(map['hyperparameterTuningJobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

