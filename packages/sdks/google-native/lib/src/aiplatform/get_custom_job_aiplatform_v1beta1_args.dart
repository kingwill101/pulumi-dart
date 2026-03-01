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
    required pulumi.Output<String> customJobId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      customJobId = pulumi.Input.asInput<String>(customJobId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customJobId': customJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCustomJobAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetCustomJobAiplatformV1beta1Args(
      customJobId: pulumi.Output.create<String>(map['customJobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

