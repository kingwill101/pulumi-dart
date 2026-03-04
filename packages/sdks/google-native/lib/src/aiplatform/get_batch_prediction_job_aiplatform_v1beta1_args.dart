// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_batch_prediction_job_aiplatform_v1beta1_args_doc}
/// Arguments for getBatchPredictionJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_batch_prediction_job_aiplatform_v1beta1_args_doc}
class GetBatchPredictionJobAiplatformV1beta1Args {
  final pulumi.Input<String> batchPredictionJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBatchPredictionJobAiplatformV1beta1Args].
  /// [batchPredictionJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBatchPredictionJobAiplatformV1beta1Args({
    required this.batchPredictionJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchPredictionJobId': batchPredictionJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBatchPredictionJobAiplatformV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBatchPredictionJobAiplatformV1beta1Args(
      batchPredictionJobId: pulumi.Input.fromValue(
        map['batchPredictionJobId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
