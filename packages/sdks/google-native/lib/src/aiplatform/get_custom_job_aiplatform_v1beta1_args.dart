// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_custom_job_aiplatform_v1beta1_args_doc}
/// Arguments for getCustomJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_custom_job_aiplatform_v1beta1_args_doc}
class GetCustomJobAiplatformV1beta1Args {
  final pulumi.Input<String> customJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCustomJobAiplatformV1beta1Args].
  /// [customJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCustomJobAiplatformV1beta1Args({
    required this.customJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customJobId': customJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCustomJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetCustomJobAiplatformV1beta1Args(
      customJobId: (map['customJobId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

