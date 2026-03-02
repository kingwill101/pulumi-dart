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
  GetJobTemplateArgs({
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
      jobTemplateId: (map['jobTemplateId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

