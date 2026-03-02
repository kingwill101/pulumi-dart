// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_config.dart';

/// {@template pulumi_transcoder_job_template_job_template_args_doc}
/// The set of arguments for JobTemplate.
/// {@endtemplate}
/// {@macro pulumi_transcoder_job_template_job_template_args_doc}
class JobTemplateArgs {
  /// The configuration for this template.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfig>? config;
  /// ID to use for the Transcoding job template.
  final pulumi.Input<String> jobTemplateId;
  /// The labels associated with this job template. You can use these to organize and group your job templates.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the transcoding job template resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [JobTemplateArgs].
  /// [config] The configuration for this template.
  /// [jobTemplateId] ID to use for the Transcoding job template.
  /// [labels] The labels associated with this job template. You can use these to organize and group your job templates.
  /// [location] The location of the transcoding job template resource.
  /// [project] The ID of the project in which the resource belongs.
  JobTemplateArgs({
    this.config,
    required this.jobTemplateId,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'jobTemplateId': jobTemplateId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory JobTemplateArgs.fromMap(Map<String, dynamic> map) {
    return JobTemplateArgs(
      config: map['config'] == null ? null : (JobTemplateConfig.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      jobTemplateId: (map['jobTemplateId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

