// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config.dart';

/// {@template pulumi_transcoder_v1_job_template_args_doc}
/// The set of arguments for JobTemplate.
/// {@endtemplate}
/// {@macro pulumi_transcoder_v1_job_template_args_doc}
class JobTemplateArgs {
  /// The configuration for this template.
  final pulumi.Input<JobConfig>? config;
  /// Required. The ID to use for the job template, which will become the final component of the job template's resource name. This value should be 4-63 characters, and valid characters must match the regular expression `a-zA-Z*`.
  final pulumi.Input<String> jobTemplateId;
  /// The labels associated with this job template. You can use these to organize and group your job templates.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [JobTemplateArgs].
  /// [config] The configuration for this template.
  /// [jobTemplateId] Required. The ID to use for the job template, which will become the final component of the job template's resource name. This value should be 4-63 characters, and valid characters must match the regular expression `a-zA-Z*`.
  /// [labels] The labels associated with this job template. You can use these to organize and group your job templates.
  /// [location] Optional.
  /// [name] The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  /// [project] Optional.
  JobTemplateArgs({
    this.config,
    required this.jobTemplateId,
    this.labels,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<JobConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'jobTemplateId': jobTemplateId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory JobTemplateArgs.fromMap(Map<String, dynamic> map) {
    return JobTemplateArgs(
      config: map['config'] == null ? null : (JobConfig.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      jobTemplateId: (map['jobTemplateId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

