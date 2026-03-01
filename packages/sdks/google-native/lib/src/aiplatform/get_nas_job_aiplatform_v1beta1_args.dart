// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_nas_job_aiplatform_v1beta1_args_doc}
/// Arguments for getNasJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_nas_job_aiplatform_v1beta1_args_doc}
class GetNasJobAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> nasJobId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNasJobAiplatformV1beta1Args].
  /// [location] Required.
  /// [nasJobId] Required.
  /// [project] Optional.
  GetNasJobAiplatformV1beta1Args({
    required pulumi.Output<String> location,
    required pulumi.Output<String> nasJobId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      nasJobId = pulumi.Input.asInput<String>(nasJobId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'nasJobId': nasJobId,
      'project': ?project,
    };
  }

  factory GetNasJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNasJobAiplatformV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      nasJobId: pulumi.Output.create<String>(map['nasJobId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

