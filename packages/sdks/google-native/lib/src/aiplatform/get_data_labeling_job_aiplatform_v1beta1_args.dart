// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_data_labeling_job_aiplatform_v1beta1_args_doc}
/// Arguments for getDataLabelingJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_data_labeling_job_aiplatform_v1beta1_args_doc}
class GetDataLabelingJobAiplatformV1beta1Args {
  final pulumi.Input<String> dataLabelingJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataLabelingJobAiplatformV1beta1Args].
  /// [dataLabelingJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetDataLabelingJobAiplatformV1beta1Args({
    required this.dataLabelingJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLabelingJobId': dataLabelingJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataLabelingJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDataLabelingJobAiplatformV1beta1Args(
      dataLabelingJobId: pulumi.Input.fromValue(map['dataLabelingJobId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
