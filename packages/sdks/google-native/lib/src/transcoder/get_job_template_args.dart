// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transcoder_v1_get_job_template_args_doc}
/// Arguments for getJobTemplate.
/// {@endtemplate}
/// {@macro pulumi_transcoder_v1_get_job_template_args_doc}
class GetJobTemplateArgs {
  final pulumi.Input<String> jobTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetJobTemplateArgs].
  /// [jobTemplateId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetJobTemplateArgs({
    required this.jobTemplateId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobTemplateId': jobTemplateId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetJobTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateArgs(
      jobTemplateId: pulumi.Input.fromValue(map['jobTemplateId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

