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
    required this.location,
    required this.nasJobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'nasJobId': nasJobId,
      'project': ?project,
    };
  }

  factory GetNasJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNasJobAiplatformV1beta1Args(
      location: (map['location'] as String).input(),
      nasJobId: (map['nasJobId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

