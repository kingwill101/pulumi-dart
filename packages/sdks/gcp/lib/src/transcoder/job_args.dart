// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config.dart';

/// {@template pulumi_transcoder_job_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_transcoder_job_job_args_doc}
class JobArgs {
  /// The configuration for this template.
  /// Structure is documented below.
  final pulumi.Input<JobConfig>? config;
  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the transcoding job resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Specify the templateId to use for populating Job.config.
  /// The default is preset/web-hd, which is the only supported preset.
  final pulumi.Input<String>? templateId;

  /// Creates a new [JobArgs].
  /// [config] The configuration for this template.
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs.
  /// [location] The location of the transcoding job resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [templateId] Specify the templateId to use for populating Job.config.
  JobArgs({
    this.config,
    this.labels,
    required this.location,
    this.project,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<JobConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'templateId': ?templateId,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      config: map['config'] == null ? null : (JobConfig.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      templateId: map['templateId'] == null ? null : (map['templateId']! as String).input(),
    );
  }
}

