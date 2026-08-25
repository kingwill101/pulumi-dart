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
  final pulumi.Input<JobTemplateConfig?>? config;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// ID to use for the Transcoding job template.
  final pulumi.Input<String> jobTemplateId;
  /// The labels associated with this job template. You can use these to organize and group your job templates.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the transcoding job template resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [JobTemplateArgs].
  /// [config] The configuration for this template.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [jobTemplateId] ID to use for the Transcoding job template.
  /// [labels] The labels associated with this job template. You can use these to organize and group your job templates.
  /// [location] The location of the transcoding job template resource.
  /// [project] The ID of the project in which the resource belongs.
  const JobTemplateArgs({
    this.config,
    this.deletionPolicy,
    required this.jobTemplateId,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'jobTemplateId': jobTemplateId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory JobTemplateArgs.fromMap(Map<String, dynamic> map) {
    return JobTemplateArgs(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobTemplateId: pulumi.Input.fromValue(map['jobTemplateId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
