// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_custom_job_args_doc}
/// Arguments for getCustomJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_custom_job_args_doc}
class GetCustomJobArgs {
  final pulumi.Input<String> customJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCustomJobArgs].
  /// [customJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCustomJobArgs({
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

  factory GetCustomJobArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomJobArgs(
      customJobId: pulumi.Output.create<String>(map['customJobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

