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
  final pulumi.Input<JobConfig?>? config;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the transcoding job resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Specify the templateId to use for populating Job.config.
  /// The default is preset/web-hd, which is the only supported preset.
  final pulumi.Input<String?>? templateId;

  /// Creates a new [JobArgs].
  /// [config] The configuration for this template.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs.
  /// [location] The location of the transcoding job resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [templateId] Specify the templateId to use for populating Job.config.
  const JobArgs({
    this.config,
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.project,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<JobConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'templateId': ?templateId,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
