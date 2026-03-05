// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_batch_prediction_job_args_doc}
/// Arguments for getBatchPredictionJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_batch_prediction_job_args_doc}
class GetBatchPredictionJobArgs {
  final pulumi.Input<String> batchPredictionJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBatchPredictionJobArgs].
  /// [batchPredictionJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBatchPredictionJobArgs({
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

  factory GetBatchPredictionJobArgs.fromMap(Map<String, dynamic> map) {
    return GetBatchPredictionJobArgs(
      batchPredictionJobId: pulumi.Input.fromValue(map['batchPredictionJobId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

