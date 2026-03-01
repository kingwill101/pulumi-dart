// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_data_labeling_job_args_doc}
/// Arguments for getDataLabelingJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_data_labeling_job_args_doc}
class GetDataLabelingJobArgs {
  final pulumi.Input<String> dataLabelingJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataLabelingJobArgs].
  /// [dataLabelingJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDataLabelingJobArgs({
    required pulumi.Output<String> dataLabelingJobId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      dataLabelingJobId = pulumi.Input.asInput<String>(dataLabelingJobId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLabelingJobId': dataLabelingJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataLabelingJobArgs.fromMap(Map<String, dynamic> map) {
    return GetDataLabelingJobArgs(
      dataLabelingJobId: pulumi.Output.create<String>(map['dataLabelingJobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

